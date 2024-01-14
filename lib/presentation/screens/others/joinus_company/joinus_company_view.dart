
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/components/cheakbox_title.dart';
import 'package:quickbroker/presentation/screens/others/joinus_company/components/joinus_company_step2.dart';
import 'package:quickbroker/presentation/screens/others/joinus_company/components/joinus_compony_step1.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../components/mytext_field.dart';
import '../../../ui/MyColors.dart';

class JoinUsCompanyView extends StatelessWidget {
  const JoinUsCompanyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 100),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {  },
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
                  child: Text("Next".tr),
                ),
              ),
            ],
          )
      ),
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
                        height: ScreenUtil.getScreenHeight(context)*0.4,
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
                ],
              ),
              Container(
                width:ScreenUtil.getScreenWidth(context),
                height: ScreenUtil.getScreenHeight(context),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 200),
                    width:ScreenUtil.getScreenWidth(context),
                    height: ScreenUtil.getScreenHeight(context)*0.8,
                    child:JoinUsCompanyStep2(),
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




