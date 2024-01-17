
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/components/cheakbox_title.dart';

import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../components/bottom_copy_right.dart';
import '../../../components/info_card.dart';
import '../../../components/mytext_field.dart';
import '../../../ui/MyColors.dart';

class PersonalAccountView extends StatelessWidget {
  const PersonalAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.all(30),
          child: FloatingActionButton(
            onPressed: () {  },
            child: Icon(Icons.arrow_back),
          )
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width:ScreenUtil.getScreenWidth(context)*0.8,
                        height: ScreenUtil.getScreenHeight(context)*0.4,
                        child: SvgPicture.asset(
                          'images/img6.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                          width:ScreenUtil.getScreenWidth(context),
                          height: ScreenUtil.getScreenHeight(context)*0.6,
                          child: SizedBox()
                      ),
                    ],
                  ),
                ],
              ),
              Container(
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
                                  Container(
                                      width: 400,
                                      child: MyTextField()
                                  ),
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
                                  Container(
                                    width: 400,
                                      child: MyTextField()
                                  ),
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
                            Padding(
                              padding: const EdgeInsets.all(40),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: 300,
                                height: 250,
                                decoration: BoxDecoration(
                                  color:AppColors.secondryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.4), // shadow color
                                      spreadRadius: 1,
                                      blurRadius:11,
                                      offset: Offset(0, 8),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Specialist".tr,
                                      style: TextStyle(fontSize:15,color: AppColors.baseColor),
                                    ),
                                    Text(
                                      "Name of your Organization".tr,
                                      style: TextStyle(fontSize:15,color: AppColors.baseColor),
                                    ),
                                    Text(
                                      "Working hours".tr,
                                      style: TextStyle(fontSize:15,color: AppColors.baseColor),
                                    ),
                                  ],
                                ),
                              ),
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


            ],
          ),
        ),
      ),
    );
  }
}




