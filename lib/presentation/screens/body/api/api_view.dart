
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../components/bottom_copy_right.dart';

class ApiView extends StatelessWidget {
  const ApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width:ScreenUtil.getScreenWidth(context)*0.92,
                    height: ScreenUtil.getScreenHeight(context)*0.9,
                    child: SvgPicture.asset(
                      'assets/icons/icon1.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(flex: 1,child: SizedBox()),
                      Container(
                        width:ScreenUtil.getScreenWidth(context)*0.40,
                        height: ScreenUtil.getScreenHeight(context)*0.55,
                        child: SvgPicture.asset(
                          'assets/icons/homicon2.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width:ScreenUtil.getScreenWidth(context)*0.92,
                      height: ScreenUtil.getScreenHeight(context)*0.9,
                      child: Center(child:Text("Api",style: TextStyle(fontSize: 50),))
                  ),
                ],)

            ],
          ),
        ),
      ),
    );
  }
}
