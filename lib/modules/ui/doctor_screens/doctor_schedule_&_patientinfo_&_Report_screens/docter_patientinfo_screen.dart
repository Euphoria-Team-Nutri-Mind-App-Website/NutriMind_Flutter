import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

import '../../../../shared/widgets/default_items.dart';

class Doctor_PatientInfo extends StatelessWidget {
  const Doctor_PatientInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorScheduleScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Patient Info",
              style: Theme.of(context).textTheme.headline1,

            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 8.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 30.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Name : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Ahmed Mohamed",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Age : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "34",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Gender : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Male",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Disease : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Eating Disorder",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "History",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Last consultation",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "you should go on plan we made and do\n activities you love ,Make youself busy \n far eating.",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: MyColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Text(
                    "New appointment : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "from 2:00-2:30 pm",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                width: double.infinity,
                height: 60.h,
                decoration: BoxDecoration(
                    color: MyColors.lightGrey,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Row(
                  children: [
                    Text(
                      'Report',
                      style: TextStyle(
                          color: MyColors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'DoctorReport');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: MyColors.grey,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
