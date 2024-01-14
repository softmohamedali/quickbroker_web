import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quickbroker/core/utils/screen_size.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/responsive.dart';
import '../../../../components/side_menu_button.dart';
import 'lang_drop_down.dart';
import 'search_edit_text.dart';
import 'navigation_button_list.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: defaultPadding),
            child:!Responsive.isLargeMobile(context)?
            Container(
              width: ScreenUtil.getScreenWidth(context)*0.1,
              height: ScreenUtil.getScreenHeight(context)*0.15,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
              ),

            ):
            MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2,),
          if(!Responsive.isLargeMobile(context))  const NavigationButtonList(),
          const Spacer(flex: 2,),
          const Row(
            children: [
              SearchEditText(),
              SizedBox(width: 30),
              LangMenu(),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}



