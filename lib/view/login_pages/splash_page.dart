import 'package:complex/data/providers/auth_provider.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/view/dashboard/home_page.dart';
import 'package:complex/view/login_pages/landing_page.dart';
import 'package:complex/view/login_pages/phone_verification_page.dart';
import 'package:complex/utils/local_db_util.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/notification_helper.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  AuthProvider _authProvider = Injector.appInstance.get<AuthProvider>();
  UserRepository _userRepository = Injector.appInstance.get<UserRepository>();
  NotificationHelper _helper = NotificationHelper.getInstance();
  final LocalDbUtil _localDbUtil = LocalDbUtil.getInstance();

  @override
  void initState() {
    _localDbUtil.initDb();
    super.initState();
    _checkUserState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: ScreenWithLoader(
        isLoading: true,
        color: Colors.white38,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 4,
                vertical: 150,
              ),
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
      ),
    );
  }

  void _checkUserState() {
    _authProvider.isSignedIn().then((value) {
      if (value) {
        _authProvider.hasVerifiedNumber().then((value) {
          if (value) {
            _userRepository.setUser(_authProvider.getUId()).then((value) {
              _helper.setFcm();
              Navigator.pushAndRemoveUntil(
                  context, NextPageRoute(HomePage()), (route) => false);
            });
          } else {
            Navigator.pushAndRemoveUntil(context,
                NextPageRoute(PhoneVerificationPage()), (route) => false);
          }
        });
      } else {
        Navigator.pushAndRemoveUntil(
            context, NextPageRoute(LandingPage()), (route) => false);
      }
    });
  }
}
