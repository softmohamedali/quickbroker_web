
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickbroker/presentation/components/cheakbox_title.dart';
import 'package:quickbroker/presentation/screens/others/create_code/company/create_code_company_step2.dart';
import 'package:quickbroker/presentation/screens/others/joinus_company/components/joinus_company_step2.dart';
import 'package:quickbroker/presentation/screens/others/joinus_company/components/joinus_compony_step1.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../components/mytext_field.dart';
import '../../../ui/MyColors.dart';
import 'company/create_code_company_step1.dart';
import 'company/create_code_company_step3.dart';

class CreateCodeCompanyView extends StatelessWidget {
  const CreateCodeCompanyView({Key? key}) : super(key: key);

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
                    child:CreateCodeCompanyStep1(),
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




