import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/doctor_profile_widgets.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorLoginScreen',
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.white,
                      radius: 40.r,
                      child: Image.asset("assets/images/doctor2.png"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dr.John Smith",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
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
                              'john20@gmail.com',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: MyColors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "National Id",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),

              SizedBox(height: 6.h),
              const ProfileContainer(text: "7654 7790 54533"),
              SizedBox(height: 13.h),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'DoctorScheduleScreen');
                  },
                  child: ProfileButtons(
                    icon: Icons.calendar_month,
                    text: 'My schedule',
                  )),
              SizedBox(
                height: 13.h,
              ),
              InkWell(
                  onTap: (){Navigator.pushNamed(context, 'DoctorSettingScreen');},
                  child:ProfileButtons(icon:Icons.settings,text:'Settings',)
              ),
              SizedBox(height: 13.h),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ContinueScreen');
                  },
                  child: ProfileButtons(
                    icon: Icons.logout,
                    text: 'Log out',
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
