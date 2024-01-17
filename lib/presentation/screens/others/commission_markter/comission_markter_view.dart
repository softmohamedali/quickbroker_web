
import 'package:flutter/material.dart';

import '../../../../core/utils/screen_size.dart';
import 'commission_markter_step1.dart';
import 'commission_markter_step2.dart';

  class CommissionMarkterView extends StatelessWidget {
  const CommissionMarkterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width:ScreenUtil.getScreenWidth(context),
                height: ScreenUtil.getScreenHeight(context),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 200),
                    width:ScreenUtil.getScreenWidth(context),
                    height: ScreenUtil.getScreenHeight(context)*0.8,
                    child:CommissionMarkterStep1(),
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




