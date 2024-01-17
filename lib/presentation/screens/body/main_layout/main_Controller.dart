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
import 'package:quickbroker/presentation/screens/others/a/loading_view.dart';
import 'package:quickbroker/presentation/screens/others/a/thank_you_view.dart';
import 'package:quickbroker/presentation/screens/others/commission_markter/commission_markter_step2.dart';
import 'package:quickbroker/presentation/screens/user/forgetpassword/forget_password_view.dart';
import 'package:quickbroker/presentation/screens/user/login/login_view.dart';
import 'package:quickbroker/presentation/screens/user/logout/logout_view.dart';

import '../../others/create_account_selection/create_account_selection_view.dart';
import '../../others/commission_markter/comission_markter_view.dart';
import '../../others/create_code/create_code_company_view.dart';
import '../../others/joinus_company/joinus_company_view.dart';

class MainController extends GetxController{

  List<Widget> screens=[
    HomeScreen(),
    ApiScreen(),
    ServicesScreen(),
    AboutUsScreen(),
    JoinUsScreen(),
    ContactUsScreen(),
    AccountScreen(),
    LoginView(),
    LogOutView(),
    ForgetPasswordView(),
    CreateAccountTypeSelectionView(),
    LoadingView(),
    ThankYouView(),
    CommissionMarkterView(),
    CreateCodeCompanyView(),
    JoinUsCompanyView(),

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