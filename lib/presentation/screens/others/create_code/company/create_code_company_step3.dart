import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../../components/cheakbox_title.dart';
import '../../../../components/my_menu.dart';
import '../../../../components/mytext_field.dart';
import '../../../../ui/MyColors.dart';
import 'create_code_company_step4_code.dart';

class CreateCodeCompanyStep3 extends StatelessWidget {
  const CreateCodeCompanyStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Get.to(CreateCodeCompanyStep4Code());
                  },
                  child: Text("Next".tr),
                ),
              ),
            ],
          )
      ),
      body: Stack(
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
          Padding(
            padding: EdgeInsets.symmetric(vertical:150,horizontal: 200),
            child: Container(
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
                                    Expanded(child: SizedBox()),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Required number of (clients/new users) per month".tr,
                                              style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "to subscribe to the application is:".tr,
                                              style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Personal".tr,
                                          style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Family".tr,
                                          style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Company".tr,
                                          style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Container(
                                      height: 200.0,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: AppColors.baseColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.4), // shadow color
                                            spreadRadius: 1,
                                            blurRadius:11,
                                            offset: Offset(0, 8),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Scheduley target :".tr,
                                              style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Minimum target :".tr,
                                              style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                          ],
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
                                          "Knowing that the following targets are required achieve \nthe aim of the marketing campaign and the desires of both panties of the contract".tr,
                                          style: TextStyle(color: AppColors.activeColor),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "The note below is only for company account".tr,
                                          style: TextStyle(fontSize:10,color: AppColors.secondryColor,fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Note :".tr,
                                              style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "The target numbers above include the aggregate backlog results from the main code in addition \nto other sub_ codes that you will create foe your employee or others later".tr,
                                              style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30.0),
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
        ],
      ),
    );
  }
}

