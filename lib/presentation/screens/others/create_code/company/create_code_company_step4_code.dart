import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../../components/cheakbox_title.dart';
import '../../../../ui/MyColors.dart';

class CreateCodeCompanyStep4Code extends StatelessWidget {
  const CreateCodeCompanyStep4Code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {  },
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                      "Scheduley application is offering 25% for distribution between :".tr,
                                      style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "A. The account holder [my commission]".tr,
                                            style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 40,),
                                          Text(
                                            "B. Discount code for [ clients]".tr,
                                            style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 300,
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
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "Type your code name".tr,
                                              hintStyle: TextStyle(color: AppColors.secTextColor),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  borderSide: BorderSide.none
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "Check".tr,
                                          style: TextStyle(fontSize:20,color: AppColors.secTextColor,fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "Code".tr,
                                          style: TextStyle(fontSize:20,color: AppColors.secondryColor,fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(child: SizedBox()),
                                        CheakBoxWithTilte(isChecked: true),
                                        Expanded(child: SizedBox()),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Copy".tr,
                                              style: TextStyle(fontSize:20,color: AppColors.secondryColor,fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              width: 30,
                                                height: 30,
                                                child: SvgPicture.asset("icons/copy.svg")
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              "Please save your code".tr,
                                              style: TextStyle(fontSize:10,color: AppColors.secondryColor,fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Note :".tr,
                                          style: TextStyle(fontSize:20,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "The note below is only for company account ".tr,
                                              style: TextStyle(fontSize:10,color: AppColors.secondryColor,fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              "To create sub_ account for your employee or others, please go to the option of [create sub_code] \nwhich is available from the account list dropdown".tr,
                                              style: TextStyle(fontSize:15,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CheakBoxWithTilte(isChecked: true,),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "The Period of Campaign marketing is 90 days only".tr,
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
        ],
      ),
    );
  }
}

