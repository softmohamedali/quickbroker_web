import 'package:flutter/material.dart';
const primaryColor = Colors.white;
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF000515);
const defaultPadding = 20.0;





class AZUser {
  static String USER_FIRST_NAME = "Guest";
  static String USER_LAST_NAME = "";
  static String USER_IMAGE = "";
  static String USER_PHONE = "";
  static String USER_EMAIL = "";
  static String USER_ID = "";
  static String DOB = "";
  static String NOTIFICATION_TOKEN = "";

  static String DEFAULT_IMAGE = "assets/images/city_2.png";
}

class AZUrls {
  static String GET_LANGUAGES = "/Language/GetLanguages";

  static String SET_LANGUAGES = "/Common/SetLanguage/";

  static String DETERMINE_ADDRESS_URL =
      "https://nominatim.openstreetmap.org/reverse?format=jsonv2";

  static String ON_BOARDING_URL = "/banner/list?tag=OnBoarding";

  static String UPDATE_NOTIFICATION_TOKEN = "/PushNotification/Token";

  static String GET_NOTIFICATION_LIST =
      "/PushNotification/userNotification/List";

  static String USER_LOGIN = "/Authenticate/GetToken";

  static String CREATE_USER = "/Customer/Register?returnUrl=%2F";

  static String GET_USER_DETAILS = "/Customer/Info";

  static String GET_USER_AVATAR = "/Customer/Avatar";

  static String UPLOAD_USER_AVATAR = "/Customer/UploadByFileAvatar";

  static String GOOGLE_SIGN_IN = "/Authenticate/GetTokenByGoogle";

  static String APPLE_SIGN_IN = "/Authenticate/GetTokenByApple";
}

