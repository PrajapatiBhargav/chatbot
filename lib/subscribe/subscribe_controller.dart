import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscribeController extends GetxController {
  late BuildContext context;

  RxBool isExpanded = false.obs;

  void navigateTo(Widget route) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  }

  void pop() {
    Navigator.of(context).pop(false);
    update();
  }

  void exitScreen() {
    Get.delete<SubscribeController>();
    Navigator.pop(context);
  }
}