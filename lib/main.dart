import 'package:complex/blocs/auth_bloc.dart';
import 'package:complex/blocs/channels_bloc.dart';
import 'package:complex/blocs/complex_bloc.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/blocs/service_bloc.dart';
import 'package:complex/local/pref/Preference.dart';
import 'package:complex/pages/login_pages/splash_page.dart';
import 'package:complex/utils/local_db_util.dart';
import 'package:complex/utils/log.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:overlay_support/overlay_support.dart';
import 'data/models/response/auth_response/user_session.dart';
import 'dependency_injections.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/ecommerce/cubit/ecommerce_cubit.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/ads/ads_bloc.dart'
    as E3_AdsBloc;
import 'package:complex/newentityfeatures/ecommerce/bloc/categories/categories_bloc.dart'
    as E3_CategoriesBloc;
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart'
    as E3_ProductBloc;
import 'package:complex/newentityfeatures/ecommerce/bloc/service/service_bloc.dart'
    as E3_ServiceBloc;

import 'package:complex/newentityfeatures/ecommerce-admin/bloc/order/order_bloc.dart'
    as E3_OrderBloc;
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/vendor/vendor_bloc.dart'
    as E3_VendorBloc;
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/delivery/delivery_bloc.dart'
    as E3_DeliveryBloc;
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/store-product/store_product_bloc.dart'
    as E3_StoreProductBloc;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    var instance = FirebaseMessaging();
    instance.configure(onLaunch: onLaunch);
    // FirebaseMessaging.onBackgroundMessage(onLaunch);
    setupDependencyInjections();
    runApp(MyApp());
  });
}

Future<void> onLaunch(Map<String, dynamic> message) async {
  Log.v('onLaunch called --> $message');
  // _notificationClickAction(message);
  await Firebase.initializeApp();
  UserSession.notificationData = message;
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  final Preference _pref = Preference.getInstance();
  final LocalDbUtil _localDbUtil = LocalDbUtil.getInstance();

  @override
  Widget build(BuildContext context) {
    _pref.load().then((_) {
      UserSession();
    });
    super.build(context);
    return OverlaySupport(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              AuthInitial(),
            ),
          ),
          BlocProvider<EcommerceCubit>(create: (_) => EcommerceCubit()),
          BlocProvider<ComplexBloc>(
            create: (context) => ComplexBloc(
              ComplexInitialState(),
            ),
          ),
          BlocProvider<ServiceBloc>(
            create: (context) => ServiceBloc(
              ServiceInitialState(),
            ),
          ),
          BlocProvider<ChannelsBloc>(
            create: (context) => ChannelsBloc(
              ChannelsInitialState(),
            ),
          ),
          BlocProvider<ProductBloc>(
            create: (context) => ProductBloc(
              ProductInitial(),
            ),
          ),
          // BY ABDERRAHMANE:
          // ECOMMERCE
          BlocProvider<E3_AdsBloc.AdsBloc>(create: (_) => E3_AdsBloc.AdsBloc()),
          BlocProvider<E3_CategoriesBloc.CategoriesBloc>(
              create: (_) => E3_CategoriesBloc.CategoriesBloc()),
          BlocProvider<E3_ProductBloc.ProductBloc>(
              create: (_) => E3_ProductBloc.ProductBloc()),
          BlocProvider<E3_ServiceBloc.ServiceBloc>(
              create: (_) => E3_ServiceBloc.ServiceBloc(
                    Get.context.read<E3_ProductBloc.ProductBloc>(),
                  )),

          BlocProvider<E3_OrderBloc.OrderBloc>(
            create: (_) => E3_OrderBloc.OrderBloc(),
          ),
          BlocProvider<E3_VendorBloc.VendorBloc>(
            create: (_) => E3_VendorBloc.VendorBloc(),
          ),
          BlocProvider<E3_DeliveryBloc.DeliveryBloc>(
            create: (_) => E3_DeliveryBloc.DeliveryBloc(),
          ),
          BlocProvider<E3_StoreProductBloc.StoreProductBloc>(
            create: (_) => E3_StoreProductBloc.StoreProductBloc(),
          ),
        ],
        child: GetMaterialApp(
          title: "VThePeople",
          theme: ThemeData(
            primaryColor: ColorConstants.primaryColor,
          ),
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
          localeResolutionCallback: (locale, _) {
            return locale;
          },
        ),
      ),
    );
  }
}

mixin PortraitModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return null;
  }
}

void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class Application {
  static BuildContext _context;

  Application(BuildContext context) {
    _context = context;
  }

  static BuildContext getContext() {
    return _context;
  }
}
