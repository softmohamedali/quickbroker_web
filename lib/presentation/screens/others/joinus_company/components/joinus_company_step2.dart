import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../../components/my_menu.dart';
import '../../../../components/mytext_field.dart';
import '../../../../ui/MyColors.dart';

class JoinUsCompanyStep2 extends StatelessWidget {
  const JoinUsCompanyStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.secondryColor,
                      shape: BoxShape.circle
                  ),
                  child: Center(
                      child: Text(
                        "step 1".tr,
                        style: TextStyle(color: AppColors.baseColor,fontWeight: FontWeight.bold),
                      )
                  )
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      "Join us-company".tr,
                      style: TextStyle(color: AppColors.baseColor,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30.0),
          Container(
            child: Center(
              child: Container(
                width: ScreenUtil.getScreenWidth(context)*0.5,
                height: ScreenUtil.getScreenHeight(context)*0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLEASE READ CONTRACT".tr,
                      style: TextStyle(
                          color: AppColors.textWarning,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Expanded(
                      child: Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4), // shadow color
                              spreadRadius: 1,
                              blurRadius:11,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: TextField(
                          maxLines: 30,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 32.0),
                            Container(
                              width: 300,
                              child: Text(
                                "Send a copy to email".tr,
                                style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 32.0),
                            Container(
                              width: 300,
                              child: Text(
                                "Upload official company documents".tr,
                                style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 32.0),
                            Container(
                              width: 300,
                              child: Text(
                                "SIGN aND APPROVAL OF CONTRACT ".tr,
                                style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
