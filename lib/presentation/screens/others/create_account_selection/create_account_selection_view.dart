import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';
import 'package:quickbroker/presentation/screens/others/create_company_account/create_company_account_view.dart';
import 'package:quickbroker/presentation/screens/others/personalaccount/personal_account_view.dart';

import '../../../components/cheakbox_title.dart';
import '../../../ui/MyColors.dart';
import '../create_personal_account/create_personal_account_view.dart';

class CreateAccountTypeSelectionView extends StatefulWidget {
  const CreateAccountTypeSelectionView({super.key});

  @override
  State<CreateAccountTypeSelectionView> createState() => _CreateAccountTypeSelectionViewState();
}

class _CreateAccountTypeSelectionViewState extends State<CreateAccountTypeSelectionView> {
  int? ispersonal;



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 150),
              child: Container(
                width: ScreenUtil.getScreenWidth(context)*0.1,
                height: ScreenUtil.getScreenHeight(context)*0.15,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.fill,
                ),

              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(150),
          child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
            floatingActionButton: Container(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Container(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondryColor),
                        onPressed: () {
                          if(ispersonal==1){
                            Get.to(CreatePersonalAccountView());
                          }else{
                            Get.to(CreateCompanyAccountView());
                          }

                        },
                        child: Text("Next".tr),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Row(
                    //   children: [
                    //     Container(
                    //         width: 50,
                    //         height: 50,
                    //         decoration: BoxDecoration(
                    //             color: AppColors.secondryColor,
                    //             shape: BoxShape.circle
                    //         ),
                    //         child: Center(
                    //             child: Text(
                    //               "step 2".tr,
                    //               style: TextStyle(color: AppColors.baseColor,fontWeight: FontWeight.bold),
                    //             )
                    //         )
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 30.0),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal:ScreenUtil.getScreenWidth(context)*0.1),
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Message".tr,
                                      style: TextStyle(fontSize:10,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Select your option".tr,
                                            style: TextStyle(fontSize:40,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 40,),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Radio(
                                                value: 1,
                                                groupValue:ispersonal,
                                                activeColor: AppColors.activeColor,
                                                onChanged: (value) {

                                                  setState(() {
                                                    ispersonal=value;
                                                  });
                                                },
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Personal account".tr,
                                                    style: TextStyle(fontSize:30,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "The personal account is available to individuals and to any normal person Who has the ability \nand sufficient knowledge in marketing And advertising for our products/services to \nthe products of others, According to what is available on our site.".tr,
                                                    style: TextStyle(fontSize:18,color: AppColors.textColor),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 40,),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Radio(
                                                value: 2,
                                                groupValue: ispersonal,
                                                activeColor: AppColors.activeColor,
                                                onChanged: (value) {
                                                  setState(() {
                                                    ispersonal=value;
                                                  });
                                                },
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Company account".tr,
                                                    style: TextStyle(fontSize:30,color: AppColors.activeColor,fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "The personal account is available to individuals and to any normal person Who has the ability\nand sufficient knowledge in marketing And advertising for our products/services to\nthe products of others, According to what is available on our site.".tr,
                                                    style: TextStyle(fontSize:18,color: AppColors.textColor),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 40,),
                                        ],
                                      ),
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
      ],
    );
  }
}



