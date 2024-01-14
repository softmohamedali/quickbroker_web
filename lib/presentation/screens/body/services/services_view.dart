import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/ui/MyColors.dart';

import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../components/bottom_copy_right.dart';
import '../../../components/info_card.dart';
import '../home/components/home_fotter.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width:ScreenUtil.getScreenWidth(context)*0.8,
                        height: ScreenUtil.getScreenHeight(context)*0.7,
                        child: SvgPicture.asset(
                          'images/img6.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                          width:ScreenUtil.getScreenWidth(context),
                          height: ScreenUtil.getScreenHeight(context)*0.6,
                          child: SizedBox()
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(flex: 1,child: SizedBox()),
                      Container(
                        width:ScreenUtil.getScreenWidth(context)*0.40,
                        height: ScreenUtil.getScreenHeight(context)*0.55,
                        child: SvgPicture.asset(
                          'images/imgaboutus2.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  BottomCopyRight()
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      padding:EdgeInsets.all(ScreenUtil.getScreenHeight(context)*(Responsive.isLargeMobile(context)?0.07:0.1)) ,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                            "About our services".tr,
                          style:  TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            color: AppColors.baseColor
                          ),
                        ),
                      )
                  ),
                  Container(
                    padding:  EdgeInsets.all(ScreenUtil.getScreenHeight(context)*(Responsive.isLargeMobile(context)?0.07:0.1)),
                    width:ScreenUtil.getScreenWidth(context),
                    height: ScreenUtil.getScreenHeight(context)*1.3,
                    child: GridView.builder(
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isLargeMobile(context)? 1 :3,
                        crossAxisSpacing:ScreenUtil.getScreenHeight(context)*0.2,
                        mainAxisSpacing: ScreenUtil.getScreenHeight(context)*0.2,
                      ),
                      itemCount: 6, // 3 columns x 2 rows = 6 items
                      itemBuilder: (BuildContext context, int index) {
                        return InfoCard();
                      },
                    ),
                  ),
                  HomeFotter(),
                ],),


            ],
          ),
        ),
      ),
    );
  }
}





