
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/screens/others/create_company_account/create_company_account_view.dart';

import '../../../../core/utils/screen_size.dart';
import '../../others/create_account_selection/create_account_selection_view.dart';
import '../../others/create_code/create_code_company_view.dart';
import '../../others/joinus_company/joinus_company_view.dart';
import '../../others/personalaccount/personal_account_view.dart';

class JonUsView extends StatelessWidget {
  const JonUsView({Key? key}) : super(key: key);

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
                      width: ScreenUtil.getScreenWidth(context) * 0.92,
                      height: ScreenUtil.getScreenHeight(context) * 0.9,
                      child: Center(
                          child: InkWell(
                            onTap: ()
                              {
                                Get.to(CreateAccountTypeSelectionView());
                              },
                              child: Text(
                        "JonUsView",
                        style: TextStyle(fontSize: 50),
                      )))),
                ],)

            ],
          ),
        ),
      ),
    );
  }
}
