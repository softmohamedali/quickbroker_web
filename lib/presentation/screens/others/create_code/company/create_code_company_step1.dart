import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../../components/cheakbox_title.dart';
import '../../../../components/my_menu.dart';
import '../../../../components/mytext_field.dart';
import '../../../../ui/MyColors.dart';
import 'create_code_company_step2.dart';

class CreateCodeCompanyStep1 extends StatelessWidget {
  const CreateCodeCompanyStep1({super.key});

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
                            "step 1".tr,
                            style: TextStyle(color: AppColors.baseColor,fontWeight: FontWeight.bold),
                          )
                      )
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Message".tr,
                      style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "Select the project that you want to be a marketer for it".tr,
                      style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            "Project name".tr,
                            style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: 300,
                            child: Expanded(child: MyMenu())
                        )
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            "Project type".tr,
                            style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                            width: 300,
                            child: Expanded(child: MyMenu())
                        )
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondryColor),
                        onPressed: () {
                          Get.to(CreateCodeCompanyStep2());
                        },
                        child: Text("Next".tr),
                      ),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
