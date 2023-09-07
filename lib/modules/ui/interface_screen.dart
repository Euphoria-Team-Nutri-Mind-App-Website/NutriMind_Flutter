import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/Constants/colors.dart';
import '../../shared/Constants/text_theme.dart';
import '../../shared/widgets/default_items.dart';

class InterfaceScreen extends StatelessWidget {
  const InterfaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: MyColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25.h),
            Image.asset("assets/images/logo.png", width: 210.w),
            SizedBox(height: 20.h),
            Text(
              "Health care app",
              style: AppTextStyle().greyText.copyWith(fontSize: 20.sp),
            ),
            SizedBox(height: 40.h),
            Image.asset(
              "assets/images/interface.png",
              width: 300.w,
            ),
            SizedBox(height: 45.h),
            MyBlueButton(
              page: 'ContinueScreen',
              text: 'Get Started',
              height: 70.h,
              width: 210.w,
              icon: Icons.arrow_forward,
            )
          ],
        ),
      ),
    );
  }
}
