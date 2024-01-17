
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/components/my_menu.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../components/add_asset_btn.dart';
import '../../../components/cheakbox_title.dart';
import '../../../components/mytext_field.dart';
import '../../../ui/MyColors.dart';

class CreatePersonalAccountView extends StatelessWidget {
  const CreatePersonalAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 100),
              child: Container(
                width: ScreenUtil.getScreenWidth(context)*0.05,
                height: ScreenUtil.getScreenHeight(context)*0.075,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.fill,
                ),

              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Scaffold(
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
                child: Container(
                  width:ScreenUtil.getScreenWidth(context),
                  height: ScreenUtil.getScreenHeight(context),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 200),
                      width:ScreenUtil.getScreenWidth(context),
                      height: ScreenUtil.getScreenHeight(context)*0.7,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
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
                                      width: 200,
                                      child: Text(
                                        "Nationality".tr,
                                        style:TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(width: 32.0),
                                    Expanded(child: MyTextField()),
                                  ],
                                ),
                              ),
                              SizedBox(width: 32.0),
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      child: Text(
                                        "Contact no".tr,
                                        style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(width: 32.0),
                                    Flexible(
                                      child:  MyTextField(),
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
                                      width:200,
                                      child: Text(
                                        "Gender".tr,
                                        style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(width: 32.0),
                                    Expanded(child: MyTextField()),
                                  ],
                                ),
                              ),
                              SizedBox(width: 32.0),
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                      width:200,
                                      child: Text(
                                        "Birthday".tr,
                                        style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(width: 32.0),
                                    Container(
                                        width: 80,
                                        child: MyTextField(hint: "DD".tr,)
                                    ),
                                    SizedBox(width: 22.0),
                                    Container(
                                        width: 80,
                                        child: MyTextField(hint: "MM".tr,)
                                    ),
                                    SizedBox(width: 22.0),
                                    Container(
                                        width: 100,
                                        child: MyTextField(hint: "YYYY".tr,)
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 32.0),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:200,
                                        child: Text(
                                          "Email".tr,
                                          style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 32.0),
                                      Container(
                                          width: 400,
                                          child: MyTextField()
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 32.0),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:200,
                                        child: Text(
                                          "Confirm email".tr,
                                          style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 32.0),
                                      Container(
                                          width: 400,
                                          child: MyTextField()
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 32.0),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:200,
                                        child: Text(
                                          "Are you an employee or a student".tr,
                                          style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 32.0),
                                      CheakBoxWithTilte(title: "Employee".tr,isChecked:true),
                                      SizedBox(width: 16.0),
                                      CheakBoxWithTilte(title:"Student".tr,isChecked:false)
                                    ],
                                  ),
                                  SizedBox(height: 80.0),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:200,
                                    child: Text(
                                      "Password".tr,
                                      style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(width: 32.0),
                                  Container(
                                      width: 300,
                                      child: MyTextField()
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:200,
                                    child: Text(
                                      "Confirm Password".tr,
                                      style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(width: 32.0),
                                  Container(
                                      width: 300,
                                      child: MyTextField()
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}




