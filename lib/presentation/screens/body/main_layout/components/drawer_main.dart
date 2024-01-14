import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/controller.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('HOME'.tr),
            onTap: () {
              controller.jumpToPage(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('API'.tr),
            onTap: () {
              controller.jumpToPage(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('SERVICES'.tr),
            onTap: () {
              controller.jumpToPage(2);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('ABOUT US'.tr),
            onTap: () {
              controller.jumpToPage(3);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('JOIN US'.tr),
            onTap: () {
              controller.jumpToPage(4);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text( 'CONTACT US'.tr),
            onTap: () {
              controller.jumpToPage(5);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('ACCOUNT'.tr),
            onTap: () {
              controller.jumpToPage(1);
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
