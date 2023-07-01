import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primary = Color(0xFF3C68B1);
  static const Color secondry = Color(0xFF4C8ECC);
  static const Color third = Color(0xFF6FB3E3);

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Cairo';

  static const TextTheme textTheme = TextTheme(
    headline4: welcome,
    headline5: headline,
    headline6: btnprimary,
    headline2: pagename,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
    headlineLarge: caption1,
    headline3: btnwhite,
    headline1: welcometext,
  );

  static const TextStyle welcome = TextStyle(
    // h4 -> welcome
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 0.4,
    height: 0.9,
    color: white,
      decoration: TextDecoration.none
  );
  static const TextStyle result = TextStyle(
    // h4 -> welcome
      fontFamily: fontName,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      letterSpacing: 0.4,
      height: 0.9,
      color: darkText,
      decoration: TextDecoration.none
  );
  static const TextStyle welcometext = TextStyle(
    // h4 -> welcome
      fontFamily: fontName,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      letterSpacing: 0.4,
      height: 1.5,
      color: white,
      decoration: TextDecoration.none
  );
  static const TextStyle headline1 = TextStyle(
      // h5 -> headline
      fontFamily: fontName,
      fontWeight: FontWeight.bold,
      fontSize: 10,
      letterSpacing: 0.1,
      color: white,
      decoration: TextDecoration.none);
  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.1,
    color: darkerText,
  );

  static const TextStyle btnprimary = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: white,
  );
  static const TextStyle btnwhite = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: primary,
  );
  static const TextStyle importtext = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    letterSpacing: 0,
    color: darkerText,
      decoration: TextDecoration.none);
  static const TextStyle pagename = TextStyle(
    // pagename2 -> pagename
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.04,
    color: white,
      decoration: TextDecoration.none);

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.2,
    color: lightText, // was lightText
      decoration: TextDecoration.none);


  static const TextStyle caption1 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      letterSpacing: 0.2,
      color: white, // was lightText
      decoration: TextDecoration.none);
}
