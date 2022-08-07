import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);

  // static Color

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackColor,
      )
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
