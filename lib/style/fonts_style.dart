import 'package:flutter/material.dart';

TextStyle bodySmallSemiBold = const TextStyle(
  color: Color(0xff2E3032),
  fontSize: 14,
  fontFamily: 'Lato',
  fontWeight: FontWeight.w600,
);

TextStyle bodySmallRegularGrey = const TextStyle(
    color: Color(0xffB1B5BA),
    fontSize: 14,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w400);

TextStyle styleMasukPageText(String fontFamily, Color colorText,
        FontWeight fontWeight, double fontSize) =>
    TextStyle(
      fontFamily: fontFamily,
      color: colorText,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
