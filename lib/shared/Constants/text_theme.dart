import 'package:flutter/material.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';

<<<<<<< HEAD
import 'colors.dart';

class AppTextTheme {
  static TextTheme lightTheme =  TextTheme(
    headline1:TextStyle(
        fontFamily: 'Inter',
        color: MyColors.black,
        fontWeight: FontWeight.w800,
        fontSize: 18.sp),
  );

  // static TextTheme darkTheme = const TextTheme(
  //   headline1: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
  //   headline2: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
  // );
}

=======
class AppTextStyle {
  TextStyle textBlueButton = const TextStyle(
      color: MyColors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 22,
  );
  TextStyle greyText = const TextStyle(
    color: MyColors.grey,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
  TextStyle textInAppBar = const TextStyle(
    color: MyColors.black,
    fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24,
  );
}
>>>>>>> 3e6c48e116c3293b92a8d0cf08a318de887dd247
