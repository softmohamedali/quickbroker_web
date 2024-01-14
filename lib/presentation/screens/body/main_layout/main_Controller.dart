import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quickbroker/presentation/screens/body/aboutus/aboutus_screen.dart';
import 'package:quickbroker/presentation/screens/body/account/account_screen.dart';
import 'package:quickbroker/presentation/screens/body/api/api_screen.dart';
import 'package:quickbroker/presentation/screens/body/contactus/contactus_screen.dart';
import 'package:quickbroker/presentation/screens/body/home/home_screen.dart';
import 'package:quickbroker/presentation/screens/body/joinus/joinus_screen.dart';
import 'package:quickbroker/presentation/screens/body/services/services_screen.dart';

class MainController extends GetxController{

  List<Widget> screens=[
    HomeScreen(),
    ApiScreen(),
    ServicesScreen(),
    AboutUsScreen(),
    JoinUsScreen(),
    ContactUsScreen(),
    AccountScreen(),
  ];


  var currentScreen=0.obs;

  var screenTitleList=[
    "Products",
    "Cart"
  ];


  onTapBottomNav(int screenNum){
    currentScreen.value=screenNum;
  }

}