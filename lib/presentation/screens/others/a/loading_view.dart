
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../ui/MyColors.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: ScreenUtil.getScreenWidth(context)*0.3,
          height:ScreenUtil.getScreenWidth(context)*0.3,
          decoration: BoxDecoration(
            color: AppColors.onBackGround,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.transparent,
              width: 0.0, // Border width
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(ScreenUtil.getScreenWidth(context)*0.05),
            width: ScreenUtil.getScreenWidth(context)*0.4,
            height: ScreenUtil.getScreenWidth(context)*0.4,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.activeColor), // Set the color
              strokeWidth: 20.0, // Set the stroke width
            ),
          ),
        ),
      ),
    );
  }
}




