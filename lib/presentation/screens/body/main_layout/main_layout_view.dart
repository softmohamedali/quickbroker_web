import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/controller.dart';
import '../../../../core/utils/responsive.dart';
import 'components/drawer_main.dart';
import 'components/navigation_bar.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [

            if(Responsive.isLargeMobile(context))  const Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
            Flexible(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: PageView(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: [
                      ...pages
                    ],
                  ),
              ),
            ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),

          ],
        ),
      ),
      drawer:MainDrawer(),
    );
  }
}









