import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:quickbroker/presentation/screens/body/main_layout/main_Controller.dart';
import 'package:quickbroker/presentation/screens/body/aboutus/aboutus_screen.dart';
import 'package:quickbroker/presentation/screens/body/account/account_screen.dart';
import 'package:quickbroker/presentation/screens/body/account/account_view.dart';
import 'package:quickbroker/presentation/screens/body/api/api_screen.dart';
import 'package:quickbroker/presentation/screens/body/contactus/contactus_screen.dart';
import 'package:quickbroker/presentation/screens/body/home/home_screen.dart';
import 'package:quickbroker/core/utils/translation.dart';
import 'package:quickbroker/presentation/screens/body/home/home_view.dart';
import 'package:quickbroker/presentation/screens/body/joinus/joinus_screen.dart';
import 'package:quickbroker/presentation/screens/body/joinus/joinus_view.dart';
import 'package:quickbroker/presentation/screens/body/main_layout/main_layout_screen.dart';
import 'package:quickbroker/presentation/screens/body/main_layout/main_layout_view.dart';
import 'package:quickbroker/presentation/screens/body/services/services_screen.dart';
import 'package:quickbroker/presentation/screens/user/forgetpassword/forget_password_view.dart';
import 'package:quickbroker/presentation/screens/user/login/login_view.dart';
import 'package:quickbroker/presentation/screens/user/logout/logout_view.dart';

void main() {
  runApp( MyApp(langCheck: '',));
}


class MyApp extends StatefulWidget {
  MyApp({Key? key, required this.langCheck}) : super(key: key);
  String? langCheck;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: GetMaterialApp(
        title: 'Scheduley'.tr,
        debugShowCheckedModeBanner: false,
        translations: LocalStrings(),
        locale: widget.langCheck == "ar"
            ? const Locale('ar', 'KW')
            : const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainLayoutScreen(),
      ),
    );
  }
}

