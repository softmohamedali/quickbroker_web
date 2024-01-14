import 'package:flutter/material.dart';

class ScreenUtil {
  // Singleton instance
  static final ScreenUtil _instance = ScreenUtil._internal();

  factory ScreenUtil() {
    return _instance;
  }

  ScreenUtil._internal();

  // Get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Calculate width based on percentage of screen width
  static double getWidthByPercentage(BuildContext context, double percentage) {
    return getScreenWidth(context) * percentage;
  }

  // Calculate height based on percentage of screen height
  static double getHeightByPercentage(BuildContext context, double percentage) {
    return getScreenHeight(context) * percentage;
  }
}