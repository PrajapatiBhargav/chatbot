import 'dart:io';

import 'package:flutter/material.dart';


abstract class AppColors {
  static const lightGrayColor = Color(0xFFF3F3F3);
  static const backgroundColor = Color(0xFF212121);
  static const greyColor = Color(0xFF3F3F3F);

}

abstract class AppConstants {

  static double introSkipTextSize = 14;
  static String fontFamily = 'Poppins';
}

abstract class UrlConstants {
  static const String localBaseUrl = 'http://192.168.32.160/ideal_oms/api/v1';
}

abstract class ImageConstanst {
  static const String chat = 'asset/images/ic_chat.svg';
  static const String recent = 'asset/images/ic_recent.svg';
  static const String profile = 'asset/images/ic_profile.svg';
  static const String user = 'asset/images/User.png';
  static const String plus = 'asset/images/ic_plus.svg';
  static const String send = 'asset/images/ic_send.svg';
  static const String addImg = 'asset/images/add_img.svg';
  static const String icDoc = 'asset/images/ic_doc.svg';
  static const String icLink = 'asset/images/ic_link.svg';
  static const String check = 'asset/images/check.svg';
  static const String star = 'asset/images/star.svg';
  static const String share = 'asset/images/Share.svg';
  static const String mute = 'asset/images/mute.svg';
  static const String mango = 'asset/images/mango.png';
  static const String restore = 'asset/images/restore.svg';
  static const String copy = 'asset/images/copy.svg';
  static const String send1 = 'asset/images/send1.svg';
}

abstract class SharedPreferencesKeys {
  static const isLogin = "isLogin";
}

