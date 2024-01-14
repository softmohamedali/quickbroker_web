import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../core/utils/constants.dart';
import '../ui/MyColors.dart';

class BottomCopyRight extends StatelessWidget {
  const BottomCopyRight({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: ScreenUtil.getScreenHeight(context)*0.05,
      width: double.infinity,
      color: AppColors.activeColor,
      child:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'icons/copyright.svg',
              fit: BoxFit.fill,
            ),
            SizedBox(width: 10,),
            Text(
                "2023 Quick Broker _ All Rights Reserved".tr,
              style: TextStyle(
                color: AppColors.baseColor,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
