import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color AppColor = hexToColor('#90BE6D');
  static Color secondAppColor = hexToColor('#F9844A');
  static Color blackAppColor = hexToColor("#2E3648");
}

class MyTextConstant {
  static const TextStyle ralewayTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.175,
    letterSpacing: 0.0210000008,
    color: Color(0xff2e3648),
  );
  static const TextStyle ralewayTextStyleBold = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    height: 1.175,
    letterSpacing: 0.0210000008,
    color: Color(0xff2e3648),
  );
  static const TextStyle ralewayTextStyleBoldGreen = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    height: 1.175,
    letterSpacing: 0.0210000008,
    color: Color(0xFF1B5E20),
  );
  static const TextStyle ralewayTextStyleCaption = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w400,
    height: 1.175,
    color: Color(0xff2e3648),
  );

  static const TextStyle ralewayTextStyleWhite = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.175,
    letterSpacing: 0.0210000008,
    color: Color(0xffffffff),
  );

  static const TextStyle robotoSlabTextStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 1.175,
    letterSpacing: 0.4,
    color: Color(0xff2e3648),
  );

  static const TextStyle robotoSlabTextStyleCaption = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.175,
    letterSpacing: 0.4,
    color: Color(0xff2e3648),
  );
  static const TextStyle robotoSlabTextStyleCaption2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.175,
    letterSpacing: 0.4,
    color: Color(0xff2e3648),
  );

  static final TextStyle myCustomTextStyle = GoogleFonts.raleway(
    textStyle: ralewayTextStyle,
  );
  static final TextStyle myCustomTextStyleCaption = GoogleFonts.raleway(
    textStyle: ralewayTextStyleCaption,
  );
  static final TextStyle myCustomTextStyleWhite = GoogleFonts.raleway(
    textStyle: ralewayTextStyleWhite,
  );
  static final TextStyle userNameTextStyle = GoogleFonts.robotoSlab(
    textStyle: robotoSlabTextStyle,
  );
  static final TextStyle captionTextStyle = GoogleFonts.robotoSlab(
    textStyle: robotoSlabTextStyleCaption,
  );
}
