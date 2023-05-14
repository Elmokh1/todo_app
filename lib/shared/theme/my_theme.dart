import 'package:flutter/material.dart';
import 'package:todoapproute/shared/theme/Colors.dart';

class MyTheme {
  static  ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: primaryColor,
    ),
      scaffoldBackgroundColor: lightGreenColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // backgroundColor: lightPrimary,
        selectedIconTheme: IconThemeData(
          color: primaryColor,
          size: 34,
        ),

        selectedItemColor: primaryColor,
        unselectedIconTheme: IconThemeData(
          size: 34,
          color: lightGrayColor,
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(fontSize: 25, color: Colors.black),
        bodySmall: TextStyle(fontSize: 20, color: Colors.black),
      ));
}
