
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

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width:ScreenUtil.getScreenWidth(context),
                height: ScreenUtil.getScreenHeight(context),
                child: SvgPicture.asset(
                  'images/img8.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width:ScreenUtil.getScreenWidth(context)*0.2,
                height: ScreenUtil.getScreenHeight(context)*0.45,
                decoration: BoxDecoration(
                  color: AppColors.secondryColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0.0, // Border width
                  ),
                ),
                
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Expanded(child: SizedBox()),
                          Container(
                            width:30,
                            height: 30,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                AppColors.baseColor,
                                BlendMode.srcATop,
                              ),
                              child:Text("X",style: TextStyle(fontSize: 20,color: AppColors.baseColor),)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Thank you for submit".tr,
                      style: TextStyle(color: AppColors.baseColor,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      width:150,
                      height: 150,
                      child: SvgPicture.asset(
                        'icons/done.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text(
                      "Start a program of commission marketer you\nneed to create a discount code for your client".tr,
                      style: TextStyle(color: AppColors.baseColor,fontSize: 14),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




