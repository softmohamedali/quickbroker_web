
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/components/my_menu.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../components/add_asset_btn.dart';
import '../../../components/cheakbox_title.dart';
import '../../../components/mytext_field.dart';
import '../../../ui/MyColors.dart';

class CreateCompanyAccountView extends StatelessWidget {
  const CreateCompanyAccountView({Key? key}) : super(key: key);

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: ScreenUtil.getScreenWidth(context)*0.8,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 20,),
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
                                                      child: MyTextField(),
                                                    ),
                                                    SizedBox(width: 20,),
                                                    Row(
                                                      children: [
                                                        AddAssetBtn("Upload".tr),
                                                        SizedBox(width: 20,),
                                                        Container(
                                                          width: 150,
                                                          child: Text(
                                                            "Memorandum of \nassociation".tr,
                                                            style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 20.0),
                                                Row(
                                                  children: [
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
                                                    Expanded(child: SizedBox()),
                                                    Row(
                                                      children: [
                                                        AddAssetBtn("Upload".tr),
                                                        SizedBox(width: 20,),
                                                        Container(
                                                          width: 150,
                                                          child: Text(
                                                            "Commercial License".tr,
                                                            style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Text(
                                              "Company scope of business".tr,
                                              style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            width: 300,
                                              child: MyMenu()
                                          ),
                                          Expanded(child: SizedBox()),
                                          Row(
                                            children: [
                                              AddAssetBtn("Upload".tr),
                                              SizedBox(width: 20,),
                                              Container(
                                                width: 150,
                                                child: Text(
                                                  "Authorized signatory id".tr,
                                                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Text(
                                              "Authorized signatory name".tr,
                                              style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                              width: 500,
                                              child: MyTextField()
                                          ),
                                          Expanded(child: SizedBox()),
                                          Row(
                                            children: [
                                              AddAssetBtn("Upload".tr),
                                              SizedBox(width: 20,),
                                              Container(
                                                width: 150,
                                                child: Text(
                                                  "Authorized signatory Certificate".tr,
                                                  style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
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
                                                    Container(
                                                        width: 200,
                                                        child: MyMenu(hint: "Country".tr,)
                                                    ),
                                                    SizedBox(width: 32.0),
                                                    Container(
                                                      width: 200,
                                                        child: MyMenu(hint: "State".tr,)
                                                    ),
                                                    SizedBox(width: 32.0),
                                                    Container(
                                                      width: 200,
                                                        child: MyMenu(hint: "City".tr,)
                                                    ),
                                                    Expanded(child: SizedBox()),
                                                    Row(
                                                      children: [
                                                        AddAssetBtn("Upload".tr),
                                                        SizedBox(width: 20,),
                                                        Container(
                                                          width: 150,
                                                          child: Text(
                                                            "Company profile".tr,
                                                            style: TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 32.0),
                                                Row(
                                                  children: [
                                                    Container(
                                                        width: 200,
                                                        child: MyTextField(hint: "Block no".tr,)
                                                    ),
                                                    SizedBox(width: 32.0),
                                                    Container(
                                                        width: 200,
                                                        child: MyTextField(hint: "Street no/name".tr,)
                                                    ),
                                                    SizedBox(width: 32.0),
                                                    Container(
                                                        width: 200,
                                                        child: MyTextField(hint: "Building no/name".tr,)
                                                    ),
                                                    SizedBox(width: 32.0),
                                                    Container(
                                                        width: 100,
                                                        child: MyTextField(hint: "Floor".tr,)
                                                    ),
                                                    SizedBox(width: 32.0),
                                                    Container(
                                                        width:100,
                                                        child: MyTextField(hint: "Office no".tr,)
                                                    ),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
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
                                          Container(
                                              width: 300,
                                              child: MyMenu()
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
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
                                          AddAssetBtn("Map/ url".tr)
                                        ],
                                      ),
                                      SizedBox(height: 20,),
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
                                      SizedBox(height: 80,),
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
                                      ),
                                      SizedBox(height: 80,),
                                    ],
                                  ),
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
      ],
    );
  }
}




