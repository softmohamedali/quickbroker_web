import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quickbroker/presentation/screens/body/main_layout/main_layout_view.dart';

import 'main_Controller.dart';

class MainLayoutScreen extends StatelessWidget {

  MainController mainController =Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return MainLayoutView(pages:mainController.screens);
  }
}
