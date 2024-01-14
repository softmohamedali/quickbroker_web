import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../components/my_menu.dart';
import '../../../../components/mytext_field.dart';
import '../../../../ui/MyColors.dart';

class JoinUsCompanyStep1 extends StatelessWidget {
  const JoinUsCompanyStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child:  Column(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: Text(
                  "Company name".tr,
                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: MyTextField(hint: "First".tr,),
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
                          "Required official name , according to your commercial license".tr,
                          style: TextStyle(color: AppColors.textWarning),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              Container(
                width: 200,
                child: Text(
                  "Company scope of business".tr,
                  style:TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  width: 400,
                  child: MyTextField()
              ),
              SizedBox(width: 32.0),
              Container(
                width: 200,
                child: Text(
                  "Company profile".tr,
                  style:TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 32.0),
              Container(
                  width: 300,
                  child: MyTextField()
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              Container(
                width: 200,
                child: Text(
                  "Authorized signatory name".tr,
                  style:TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  width: 400,
                  child: MyTextField()
              ),
              SizedBox(width: 32.0),
              Container(
                width: 200,
                child: Text(
                  "Authorized signatory id no".tr,
                  style:TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 32.0),
              Container(
                  width: 300,
                  child: MyTextField()
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: Text(
                  "Company address".tr,
                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: MyTextField(hint: "Country".tr,),
                        ),
                        SizedBox(width: 32.0),
                        Expanded(
                          child: MyTextField(hint: "State".tr,),
                        ),
                        SizedBox(width: 32.0),
                        Expanded(
                          child:  MyTextField(hint: "City".tr,),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.0),
                    Row(
                      children: [
                        Expanded(
                          child: MyTextField(hint: "Block no".tr,),
                        ),
                        SizedBox(width: 32.0),
                        Expanded(
                          child: MyTextField(hint: "Street no/name".tr,),
                        ),
                        SizedBox(width: 32.0),
                        Expanded(
                          child:  MyTextField(hint: "Building no/name".tr,),
                        ),
                        SizedBox(width: 32.0),
                        Expanded(
                          child:  MyTextField(hint: "Floor".tr,),
                        ),
                        SizedBox(width: 32.0),
                        Expanded(
                          child:  MyTextField(hint: "Office no".tr,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: Text(
                  "Location".tr,
                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),

              Expanded(
                child: MyTextField(hint: "Map/ url".tr,),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: Text(
                  "Commercial tower".tr,
                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: MyTextField(hint: "Map/ url".tr,),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: Text(
                  "Contact info".tr,
                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact info".tr,
                              style: TextStyle(
                                  color: AppColors.secTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 60,
                                    child: MyMenu()
                                ),
                                SizedBox(width: 20.0),
                                Container(
                                    width: 200,
                                    child: MyTextField()
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 32.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile".tr,
                              style: TextStyle(
                                  color: AppColors.secTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 60,
                                    child: MyMenu()
                                ),
                                SizedBox(width: 20.0),
                                Container(
                                    width: 200,
                                    child: MyTextField()
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 32.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width:150,
                              child: Text(
                                "Email".tr,
                                style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Container(
                                width: 200,
                                child: MyTextField()
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:30 ,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Second contact".tr,
                              style: TextStyle(
                                  color: AppColors.secTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 60,
                                    child: MyMenu()
                                ),
                                SizedBox(width: 20.0),
                                Container(
                                    width: 200,
                                    child: MyTextField()
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 32.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Second mobile".tr,
                              style: TextStyle(
                                  color: AppColors.secTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 60,
                                    child: MyMenu()
                                ),
                                SizedBox(width: 20.0),
                                Container(
                                    width: 200,
                                    child: MyTextField()
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 32.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width:150,
                              child: Text(
                                "Confirm email".tr,
                                style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Container(
                                width: 200,
                                child: MyTextField()
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
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
                    width: 150,
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
    );
  }
}
