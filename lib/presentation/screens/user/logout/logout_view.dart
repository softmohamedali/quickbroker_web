
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/constants.dart';

import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../components/bottom_copy_right.dart';
import '../../../ui/MyColors.dart'; // Corrected import statement

class LogOutView extends StatelessWidget {
  // Corrected constructor declaration
  const LogOutView({Key? key}) : super(key: key); // Added key parameter and fixed syntax

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
                  width:ScreenUtil.getScreenWidth(context)*0.82,
                  height: ScreenUtil.getScreenHeight(context)*0.9,
                  child: SvgPicture.asset(
                    'images/img2.svg',
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
                              width: ScreenUtil.getScreenWidth(context)*0.28,
                              height: ScreenUtil.getScreenHeight(context)*0.25,
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  children: [
                                    Expanded(flex:1,child: SizedBox()),
                                    Center(
                                      child: Text(
                                        'Are you sure you want to log out'.tr,
                                        style: TextStyle(
                                            fontSize:28,
                                            color: AppColors.baseColor
                                        ),
                                      ),
                                    ),
                                    const Expanded(flex:1,child: SizedBox()),
                                    Center(
                                      child: Text(
                                        'Log out'.tr,
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
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






