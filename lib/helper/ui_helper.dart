import 'dart:ui';
import 'dart:ui' as prefix0;

import 'package:dialog_app/helper/consts.dart';
import 'package:flutter/material.dart';

class UIHelper {
  UIHelper._();

  static const double padding = 8.0;

  static final TextStyle titleTextStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w700);
  static final TextStyle descriptionTextStyle = TextStyle(fontSize: 14);

  static final TextStyle descriptionErrorTextStyle =
      TextStyle(fontSize: 14, color: Colors.red);

  static final dialogBoxDecoration = BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(UIHelper.padding),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        offset: const Offset(0.0, 10.0),
      ),
    ],
  );

  static final backgroundFilter = ImageFilter.blur(
    sigmaX: 3.0,
    sigmaY: 3.0,
  );

  static verticalSpace({double height}) {
    return SizedBox(height: height ?? 20);
  }
}
