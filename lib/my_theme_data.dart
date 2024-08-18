import 'package:flutter/material.dart';
import 'package:islami_app/Colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 30, color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.primary,
      thickness: 3,
    ),
    iconTheme: IconThemeData(
      size: 25,
      color: AppColors.primary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      bodyMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      bodySmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(size: 30, color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.yellow,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryDark,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.yellow,
        thickness: 3,
      ),
      iconTheme: IconThemeData(
        size: 25,
        color: AppColors.yellow,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        bodySmall: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),

  );
}
