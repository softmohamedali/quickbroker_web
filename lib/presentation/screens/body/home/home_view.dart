
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/screens/body/home/components/home_fotter.dart';

import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../components/bottom_copy_right.dart'; // Corrected import statement

class HomeView extends StatelessWidget {
  // Corrected constructor declaration
  const HomeView({Key? key}) : super(key: key); // Added key parameter and fixed syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width:ScreenUtil.getScreenWidth(context)*0.92,
                    height: ScreenUtil.getScreenHeight(context)*0.9,
                    child: SvgPicture.asset(
                      'assets/icons/icon1.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(flex: 1,child: SizedBox()),
                      Container(
                        width:ScreenUtil.getScreenWidth(context)*0.40,
                        height: ScreenUtil.getScreenHeight(context)*0.55,
                        child: SvgPicture.asset(
                          'assets/icons/homicon2.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  BottomCopyRight()
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Container(
                    width:ScreenUtil.getScreenWidth(context)*0.92,
                    height: ScreenUtil.getScreenHeight(context)*0.9,
                    child: Column(
                      children: [

                      ],
                    )
                ),
                Column(
                  children: [
                    SizedBox(height:  ScreenUtil.getScreenHeight(context)*0.2,),
                    HomeFotter(),
                  ],
                )
              ],)

            ],
          ),
        ),
      ),
    );
  }
}
