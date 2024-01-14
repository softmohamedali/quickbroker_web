
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/responsive.dart';
import 'package:quickbroker/presentation/ui/MyColors.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../components/bottom_copy_right.dart';
import '../home/components/home_fotter.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

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
                    width:ScreenUtil.getScreenWidth(context)*0.82,
                    height: ScreenUtil.getScreenHeight(context),
                    child: SvgPicture.asset(
                      'images/img7.svg',
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

                ],
              ),
              Column(
                children: [
                  Container(
                    padding:Responsive.isMobile(context)? EdgeInsets.only(top: ScreenUtil.getScreenWidth(context)*0.2)
                        :EdgeInsets.only(top: ScreenUtil.getScreenWidth(context)*0.1),
                      width:ScreenUtil.getScreenWidth(context),
                      height: ScreenUtil.getScreenHeight(context),
                      child: Center(
                        child: Container(
                          width:Responsive.isMobile(context)?ScreenUtil.getScreenWidth(context)*0.9:ScreenUtil.getScreenWidth(context)*0.3,
                          height: ScreenUtil.getScreenHeight(context),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                      "Name".tr,
                                    style: TextStyle(color: AppColors.baseColor),
                                  ),
                                  SizedBox(width: 32.0),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.0),
                              Row(
                                children: [
                                  Text(
                                    "Email".tr,
                                    style: TextStyle(color: AppColors.baseColor),
                                  ),
                                  SizedBox(width: 32.0),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.0),
                              Row(
                                children: [
                                  Text(
                                    "Contact no".tr,
                                    style: TextStyle(color: AppColors.baseColor),
                                  ),
                                  SizedBox(width: 32.0),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your message".tr,
                                    style: TextStyle(color: AppColors.baseColor),
                                  ),
                                  SizedBox(width: 32.0),
                                  Expanded(
                                    child: Container(
                                      height: 200.0,
                                      child: TextField(
                                        maxLines: 30,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 80.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondryColor),
                                      onPressed: () {
                                      },
                                      child: Text("Submit".tr),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
