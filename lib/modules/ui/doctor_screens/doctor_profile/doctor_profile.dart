import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

import '../../../../shared/Constants/colors.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorScheduleScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: MyColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp),
            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 20.sp),
          child: Column(
            children: [
              Container(
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.darkBlue,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: MyColors.highLightBlue,
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.sp),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: MyColors.white,
                        radius: 40.r,
                        child: Image.asset('assets/images/doctor2.png'),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. john smith",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/call.png'),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '+234 657 987',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/email.png'),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'Drjohn_23@gmail.com',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
