import 'package:flutter/material.dart';

import '../core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Color(0xFF242424),fontWeight: FontWeight.w400,fontSize: 30)
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.goldColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
          size: 40
      ),
    ),
    textTheme: TextTheme(
      labelMedium: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w500
      ),
      labelSmall: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
      )
    ),

  );
}