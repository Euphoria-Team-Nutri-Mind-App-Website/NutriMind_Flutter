import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

import '../../../../shared/Constants/colors.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: CircleAvatar(
                        backgroundColor: MyColors.white,
                        radius: 40.r,
                        child: Image.asset("assets/images/user1.png"),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
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
                                'ahmed_23@gmail.com',
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
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
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
              const SmallTextField(
                hintText: '374654021937',
                obscureText: false,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                child: Text(
                  "Gender",
                  style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 6.h),
              const SmallTextField(
                hintText: 'Male',
                obscureText: false,
              ),
              SizedBox(height: 6.h),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                child: SmallTextField(
                    hintText: 'Payment',
                    obscureText: false,
                    suffixIcon: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'ChoosePaymentScreen');
                        },
                        child: const Icon(Icons.arrow_forward_ios)),
                    prefixIcon: const Icon(Icons.calendar_month)),
              ),
              SizedBox(height: 6.h),
              SmallTextField(
                  hintText: 'Document',
                  obscureText: false,
                  suffixIcon: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'DoctorReport');
                      },
                      child: Icon(Icons.arrow_forward_ios)),
                  prefixIcon: Icon(Icons.document_scanner_outlined)),
              SizedBox(height: 6.h),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                child: SmallTextField(
                    hintText: 'Setting',
                    obscureText: false,
                    suffixIcon: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'PatientSettingScreen');
                        },
                        child: const Icon(Icons.arrow_forward_ios)),
                    prefixIcon: const Icon(Icons.settings)),
              ),
              SizedBox(height: 6.h),
              SmallTextField(
                  hintText: 'Log out',
                  obscureText: false,
                  suffixIcon: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'InterfaceScreen');
                      },
                      child: Icon(Icons.arrow_forward_ios)),
                  prefixIcon: Icon(Icons.logout)),
            ],
          ),
        ),
      ),
    );
  }
}
