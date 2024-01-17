import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';
import 'package:quickbroker/presentation/components/my_menu.dart';

import '../../../components/cheakbox_title.dart';
import '../../../components/mytext_field.dart';
import '../../../ui/MyColors.dart';
import 'commission_markter_step2.dart';

class CommissionMarkterStep1 extends StatelessWidget {
  const CommissionMarkterStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 150),
                  child: Container(
                    width: ScreenUtil.getScreenWidth(context)*0.07,
                    height: ScreenUtil.getScreenHeight(context)*0.09,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fill,
                    ),

                  ),
                )
              ],
            ),
            Container(
              width:ScreenUtil.getScreenWidth(context),
              height: ScreenUtil.getScreenHeight(context),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical:20,horizontal: 200),
                  width:ScreenUtil.getScreenWidth(context),
                  height: ScreenUtil.getScreenHeight(context)*0.8,
                  child:Scaffold(
                    floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
                    floatingActionButton: Container(
                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
                        child: Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Icon(Icons.arrow_back),
                            ),
                            Expanded(child: SizedBox()),
                            Container(
                              width: 100,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondryColor),
                                onPressed: () {
                                  Get.to(CommissionMarkterStep2());
                                },
                                child: Text("Submit".tr),
                              ),
                            ),
                          ],
                        )
                    ),
                    body: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: AppColors.onBackGround,
                      child:  Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
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
                                          "step 2".tr,
                                          style: TextStyle(color: AppColors.baseColor,fontWeight: FontWeight.bold),
                                        )
                                    )
                                ),
                              ],
                            ),
                            SizedBox(height: 30.0),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: ScreenUtil.getScreenWidth(context)*0.5,
                                        child:Column(
                                          children: [
                                            Text(
                                              "Message".tr,
                                              style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 150,
                                                  child: Text(
                                                    "Full name".tr,
                                                    style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(width: 50.0),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: MyTextField(hint: "First".tr,),
                                                          ),
                                                          SizedBox(width: 32.0),
                                                          Expanded(
                                                            child: MyTextField(hint: "Second".tr,),
                                                          ),
                                                          SizedBox(width: 32.0),
                                                          Expanded(
                                                            child:  MyTextField(hint: "Third".tr,),
                                                          ),
                                                          SizedBox(width: 32.0),
                                                          Expanded(
                                                            child:  MyTextField(hint: "Last ".tr,),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 20.0),
                                                      Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          SvgPicture.asset('icons/redstar.svg'),
                                                          SizedBox(width: 10.0),
                                                          Text(
                                                            "Required official name in your iD".tr,
                                                            style: TextStyle(color: AppColors.textWarning),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 32.0),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          "Nationality".tr,
                                                          style:TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                      SizedBox(width: 32.0),
                                                      Container(
                                                        width: 250,
                                                        child: MyMenu(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 32.0),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 80,
                                                        child: Text(
                                                          "Contact no".tr,
                                                          style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                      SizedBox(width: 32.0),
                                                      Container(
                                                        width: 100,
                                                        child: MyMenu(),
                                                      ),
                                                      SizedBox(width: 22.0),
                                                      Flexible(
                                                        child:  MyTextField(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 32.0),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          "Country".tr,
                                                          style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                      SizedBox(width: 32.0),
                                                      Container(
                                                        width: 250,
                                                        child: MyMenu(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 32.0),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 150,
                                                  child: Text(
                                                    "Email".tr,
                                                    style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(width: 32.0),
                                                Container(
                                                  width: 250,
                                                  child:MyTextField(),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 32.0),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 150,
                                                  child: Text(
                                                    "Language spoken".tr,
                                                    style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(width: 32.0),
                                                Container(
                                                  width: 250,
                                                  child: MyMenu(),
                                                ),
                                              ],
                                            ),
                                            Expanded(child: SizedBox()),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

