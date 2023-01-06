import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

class Styles {
  // App colors
  static Color greenColor = const Color(0xFFa8ff79);

  // App default styles
  static TextStyle normalText = TextStyle(
    fontFamily: 'ClashDisplay',
    fontSize: AppLayout.getHeight(13),
  );

  // number style
  static TextStyle numberStyle = TextStyle(
    fontSize: AppLayout.getHeight(40),
    fontWeight: FontWeight.w500,
  );
}
