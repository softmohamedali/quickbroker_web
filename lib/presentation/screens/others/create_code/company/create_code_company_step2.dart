import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../../components/cheakbox_title.dart';
import '../../../../components/my_menu.dart';
import '../../../../components/mytext_field.dart';
import '../../../../ui/MyColors.dart';
import 'create_code_company_step3.dart';

class CreateCodeCompanyStep2 extends StatelessWidget {
  const CreateCodeCompanyStep2({super.key});

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
                                        Text(
                                          "Download pdf".tr,
                                          style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Expanded(
                                      child: Container(
                                        height: 350.0,
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
                                    SizedBox(height: 20,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CheakBoxWithTilte(isChecked: true,),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Read instructions and guidance to help  and support you in your  effort for perfect marketing".tr,
                                          style: TextStyle(color: AppColors.textWarning),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      width: 100,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondryColor),
                                        onPressed: () {
                                          Get.to(CreateCodeCompanyStep3());
                                        },
                                        child: Text("Next".tr),
                                      ),
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

