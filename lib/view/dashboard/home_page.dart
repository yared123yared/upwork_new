import 'package:complex/blocs/channels_bloc.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/ecommerce_scren.dart';
import 'package:complex/common/bottom_bar/persistent-tab-view.dart';
import 'package:complex/utils/log_print.dart';
import 'package:complex/utils/notification_helper.dart';
//import 'package:complex/utils/resource/colors.dart';
import 'package:complex/view/chat_pages/channel_list_page.dart';
import 'package:complex/view/entity_pages/entity_page.dart';
import 'package:complex/view/profile_pages/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';

enum DynamicTabState { Channel, Explore, Profile, Entity }

class HomePage extends StatefulWidget {
  final List<DynamicTabState> tabs = [
    DynamicTabState.Channel,
    DynamicTabState.Explore,
    DynamicTabState.Profile,
    DynamicTabState.Entity
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PersistentTabController _controller;
  Color _tabColor = const Color.fromRGBO(39, 122, 150, 1);
  Color _inactiveTabColor = Colors.white;
  NotificationHelper _helper = NotificationHelper.getInstance();
  UserRepository _repo = Injector.appInstance.get<UserRepository>();
  ChannelsProvider _channelsPro = Injector.appInstance.get<ChannelsProvider>();

  @override
  void initState() {
    super.initState();
    _listenToUser();
    _helper.updateToken();
    _controller = PersistentTabController(initialIndex: 0);
    FirebaseAuth.instance.currentUser.getIdToken().then((value) {
      LogPrint(value);
      UserSession.userToken = value;
    });
  }

  _listenToUser() {
    _repo.listenUserProfile().listen(
      (event) {
        if (event != null) {
          _repo.setUser(_repo.getUser().userID, userData: event.data()).then(
            (value) {
              print("CONTEXTTTTTT ::: ${event.data()}");
              _channelsPro.clearChatRoom();
              _channelsPro.setChatRoomsInOneGo(user: _repo.getUser()).then(
                (value) {
                  BlocProvider.of<ChannelsBloc>(context).add(
                    GetChannelsEvent(request: _repo.getUser()),
                  );
                },
              );
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(context),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Theme.of(context).primaryColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: false,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }

  Widget toScreen(BuildContext context, DynamicTabState tab) {
    Widget _screen;
    switch (tab) {
      case DynamicTabState.Entity:
        _screen = EntityPage();
        break;
      case DynamicTabState.Channel:
        _screen = ChannelsListPage();
        break;
      case DynamicTabState.Explore:
        _screen = ECommerceScreen();
        break;
      case DynamicTabState.Profile:
        _screen = ProfilePage(context);
        break;
    }
    return _screen;
  }

  List<Widget> _buildScreens(BuildContext context) {
    return widget.tabs.map((e) => toScreen(context, e)).toList();
  }

  PersistentBottomNavBarItem toTab(DynamicTabState tab) {
    PersistentBottomNavBarItem _tab;
    switch (tab) {
      case DynamicTabState.Entity:
        _tab = PersistentBottomNavBarItem(
          icon: Icon(Icons.apartment),
          title: 'Entity',
          iconPosition: 3,
          activeColorPrimary: _inactiveTabColor,
          activeColorSecondary: _tabColor,
          inactiveColorPrimary: _inactiveTabColor,
        );
        break;
      case DynamicTabState.Channel:
        _tab = PersistentBottomNavBarItem(
          icon: Icon(Icons.forum),
          title: 'Channels',
          iconPosition: 0,
          activeColorPrimary: _inactiveTabColor,
          activeColorSecondary: _tabColor,
          inactiveColorPrimary: _inactiveTabColor,
        );
        break;
      case DynamicTabState.Explore:
        _tab = PersistentBottomNavBarItem(
          inactiveColorSecondary: _tabColor,
          icon: Icon(Icons.memory),
          title: 'Explore',
          iconPosition: 1,
          activeColorPrimary: _inactiveTabColor,
          activeColorSecondary: _tabColor,
          inactiveColorPrimary: _inactiveTabColor,
        );
        break;
      case DynamicTabState.Profile:
        _tab = PersistentBottomNavBarItem(
          icon: Icon(Icons.person_outline),
          title: 'Profile',
          iconPosition: 2,
          activeColorPrimary: _inactiveTabColor,
          activeColorSecondary: _tabColor,
          inactiveColorPrimary: _inactiveTabColor,
        );
        break;
    }
    return _tab;
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return widget.tabs.map((e) => toTab(e)).toList();
  }
}
