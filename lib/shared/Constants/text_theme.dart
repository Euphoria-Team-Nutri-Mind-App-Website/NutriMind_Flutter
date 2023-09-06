import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppTextTheme {
  static TextTheme lightTheme =  TextTheme(
    headline1:TextStyle(
        fontFamily: 'Inter',
        color: MyColors.black,
        fontWeight: FontWeight.w800,
        fontSize: 18.sp),
    //This is for headline in AppBar
  );

  // static TextTheme darkTheme = const TextTheme(
  //   headline1: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
  //   headline2: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
  // );
}