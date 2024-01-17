import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../components/add_asset_btn.dart';
import '../../../components/cheakbox_title.dart';
import '../../../ui/MyColors.dart';

class CommissionMarkterStep2 extends StatelessWidget {
  const CommissionMarkterStep2({super.key});

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
                  padding: EdgeInsets.symmetric(horizontal: 200),
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
                                style: ElevatedButton.styleFrom(backgroundColor: AppColors.secTextColor),
                                onPressed: () {
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
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Message".tr,
                                              style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "PLEASE READ CONTRACT".tr,
                                                  style: TextStyle(fontSize:25,color: AppColors.textWarning,fontWeight: FontWeight.bold),
                                                ),

                                              ],
                                            ),
                                            SizedBox(height: 20,),
                                            Container(
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
                                            SizedBox(height: 20,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                CheakBoxWithTilte(isChecked: true,),
                                                SizedBox(width: 10.0),
                                                Text(
                                                  "Send a copy to email".tr,
                                                  style: TextStyle(color: AppColors.activeColor),
                                                ),
                                                Expanded(child: SizedBox()),
                                                AddAssetBtn("Upload id pdf".tr)
                                              ],
                                            ),
                                            SizedBox(height: 20,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                CheakBoxWithTilte(isChecked: true,),
                                                SizedBox(width: 10.0),
                                                Text(
                                                  "SIGN aND APPROVAL OF CONTRACT".tr,
                                                  style: TextStyle(color: AppColors.activeColor),
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

