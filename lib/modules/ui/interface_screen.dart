import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/Constants/colors.dart';

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
            Text("Health care app",
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: MyColors.grey,
                    decoration: TextDecoration.none)),
            SizedBox(height: 40.h),
            Image.asset(
              "assets/images/interface.png",
              width: 300.w,
            ),
            SizedBox(height: 45.h),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ContinueScreen');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: MyColors.darkBlue,
                    borderRadius: BorderRadius.circular(10.r)),
                margin: EdgeInsets.symmetric(horizontal: 65.sp),
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get Started",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: MyColors.white,
                        )),
                    SizedBox(width: 15.w),
                    Icon(
                      Icons.arrow_forward,
                      color: MyColors.white,
                      size: 24.sp,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
