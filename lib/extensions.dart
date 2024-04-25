import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


extension NumExtension on num {
  Widget get widthBox => SizedBox(
        width: toDouble(),
      );

  Widget get heightBox => SizedBox(
        height: toDouble(),
      );
}


