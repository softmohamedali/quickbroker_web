import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/controller.dart';
import '../../../../../core/utils/responsive.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatefulWidget {
  const NavigationButtonList({super.key});

  @override
  State<NavigationButtonList> createState() => _NavigationButtonList();
}

class _NavigationButtonList extends State<NavigationButtonList> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.2),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(0);
                  setState(() {});
                },
                text: 'HOME'.tr,
                isSelected: controller.page == 0,
              ),
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(1);
                  setState(() {});
                },
                text: 'API'.tr,
                isSelected: controller.page == 1,
              ),
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(2);
                  setState(() {});
                },
                text: 'SERVICES'.tr,
                isSelected: controller.page == 2,
              ),
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(3);
                  setState(() {});
                },
                text: 'ABOUT US'.tr,
                isSelected: controller.page == 3,
              ),
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(4);
                  setState(() {});
                },
                text: 'JOIN US'.tr,
                isSelected: controller.page == 4,
              ),
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(5);
                  setState(() {});
                },
                text: 'CONTACT US'.tr,
                isSelected: controller.page == 5,
              ),
              NavigationTextButton(
                onTap: () {
                  controller.jumpToPage(6);
                  setState(() {});
                },
                text: 'ACCOUNT'.tr,
                isSelected: controller.page == 6,
              ),
            ],
          ),
        );
      },
    );
  }
}
