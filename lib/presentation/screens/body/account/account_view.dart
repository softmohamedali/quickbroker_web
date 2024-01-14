
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/screen_size.dart';

class AccountView extends StatelessWidget {
  // Corrected constructor declaration
  const AccountView({Key? key}) : super(key: key); // Added key parameter and fixed syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width:ScreenUtil.getScreenWidth(context)*0.7,
                  height: ScreenUtil.getScreenHeight(context)*0.7,
                  child: SvgPicture.asset(
                    'images/img3.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width:ScreenUtil.getScreenWidth(context),
                height: ScreenUtil.getScreenHeight(context),
                child: Center(
                  child: Container(
                    width:ScreenUtil.getScreenWidth(context)*0.6,
                    height: ScreenUtil.getScreenHeight(context)*0.6,
                    child: Image.asset(
                      'assets/images/img5.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}






