import 'package:flutter/material.dart';
import 'package:weather_app/config/items/app_colors.dart';
import 'package:weather_app/config/items/linear_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.transparent,
  );

  static const TextStyle weatherTextStyle = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
  );

  static const BoxDecoration relaxColorTwoDecoration = BoxDecoration(
    gradient: LinearColors.relaxColortwo,
  );
  static const BoxDecoration relaxColorDecoration = BoxDecoration(
    gradient: LinearColors.relaxcolor,
  );
  static const TextStyle weatherTextStyle24 = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    color: AppColors.purple,
  );
}
