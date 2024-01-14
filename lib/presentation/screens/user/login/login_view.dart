
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/constants.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../ui/MyColors.dart';

class LoginView extends StatelessWidget {
  // Corrected constructor declaration
  const LoginView({Key? key}) : super(key: key); // Added key parameter and fixed syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width:ScreenUtil.getScreenWidth(context)*0.92,
                  height: ScreenUtil.getScreenHeight(context)*0.9,
                  child: SvgPicture.asset(
                    'assets/icons/icon1.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width:ScreenUtil.getScreenWidth(context)*0.92,
                      height: ScreenUtil.getScreenHeight(context)*0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                border: Border.all(  // This is where you set the border properties
                                  color: Colors.white,  // Set border color
                                  width: 2.0,         // Set border width
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              width: ScreenUtil.getScreenWidth(context)*0.25,
                              height: ScreenUtil.getScreenHeight(context)*0.6,
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  children: [
                                    Expanded(flex:1,child: SizedBox()),
                                    Center(
                                      child: Text(
                                        'LOGIN'.tr,
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                           color: AppColors.baseColor
                                        ),
                                      ),
                                    ),
                                    const Expanded(flex:1,child: SizedBox()),
                                    TextField(
                                      style: TextStyle(color: Colors.white), // Set text color to white
                                      cursorColor: Colors.white, // Set cursor color to white
                                      decoration: InputDecoration(
                                        hintText: 'Email/User'.tr,
                                        hintStyle: TextStyle(fontSize: 20,color: Colors.white.withOpacity(0.6)), // Set hint color to white with opacity
                                        filled: true,
                                        fillColor: Colors.transparent, // Set fill color to transparent
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white), // Set border color to white
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white), // Set focused border color to white
                                        ),
                                      ),
                                    ),
                                    const Expanded(flex:1,child: SizedBox()),
                                    TextField(
                                      style: const TextStyle(color: Colors.white), // Set text color to white
                                      cursorColor: Colors.white, // Set cursor color to white
                                      decoration: InputDecoration(
                                        hintText: 'Password'.tr,
                                        hintStyle: TextStyle(fontSize: 20,color: Colors.white.withOpacity(0.6)), // Set hint color to white with opacity
                                        filled: true,
                                        fillColor: Colors.transparent, // Set fill color to transparent
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white), // Set border color to white
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white), // Set focused border color to white
                                        ),
                                      ),
                                    ),
                                    const Expanded(flex:1,child: SizedBox()),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Forget Password ?'.tr,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w100,
                                              color: AppColors.baseColor
                                          ),
                                        ),
                                        Text(
                                          'Sign In'.tr,
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.baseColor
                                          ),
                                        ),

                                      ],
                                    ),
                                    Expanded(flex:1,child: SizedBox()),
                                    Center(
                                      child: SvgPicture.asset(
                                        'assets/icon.svg',
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                    ),
                                    Expanded(flex:1,child: SizedBox()),
                                    Center(
                                      child: Text(
                                        'Register For New User'.tr,
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: AppColors.baseColor
                                        ),
                                      ),
                                    ),
                                    Expanded(flex:1,child: SizedBox()),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],)

            ],
          ),
        ),
      ),
    );
  }
}






