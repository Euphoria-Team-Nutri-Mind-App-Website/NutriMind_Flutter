import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../shared/Constants/colors.dart';
import 'interface_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1500,
      splashIconSize: 200.sp,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(milliseconds: 1500),
      splash: const Image(
        image: AssetImage("assets/images/SplashIcon.png"),
      ),
      nextScreen: const InterfaceScreen(),
      backgroundColor: MyColors.babyBlue,
    );
  }
}
