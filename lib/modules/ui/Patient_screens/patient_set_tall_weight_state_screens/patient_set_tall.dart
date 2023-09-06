import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

class PatientSetTallScreen extends StatefulWidget {
  const PatientSetTallScreen({Key? key}) : super(key: key);

  @override
  State<PatientSetTallScreen> createState() => _PatientSetTallScreenState();
}

class _PatientSetTallScreenState extends State<PatientSetTallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientLoginScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'How tall are you',
          style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 40.sp),
            color: MyColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please Enter you tall !',
                  style: TextStyle(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 15.sp),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      Text(
                        '7.0 -',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        '6.0 -',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        '5.0 -',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        '4.0 -',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.w),
                  Stack(
                    children: [
                      Container(
                        width: 80.w,
                        height: 180.h,
                        decoration: BoxDecoration(
                          color: MyColors.babyBlue,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 120.sp),
                        width: 80.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: MyColors.darkBlue,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10.r),
                              bottomLeft: Radius.circular(10.r)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    children: [
                      Text(
                        '- 220',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        '- 180',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        '- 150',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        '- 120',
                        style: TextStyle(
                            color: MyColors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: Container(
                    width: 90.w,
                    padding: EdgeInsets.all(15.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: MyColors.darkBlue),
                      boxShadow: const [
                        BoxShadow(
                          color: MyColors.darkBlue,
                          blurRadius: 5.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: MyColors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "160cm",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                const MyBlueButton(
                  text: 'Next',
                  page: 'PatientSetWeightScreen',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
