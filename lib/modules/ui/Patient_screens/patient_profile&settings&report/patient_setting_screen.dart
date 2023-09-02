import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_settings_widgets.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientSettingScreen extends StatefulWidget {
  const PatientSettingScreen({Key? key}) : super(key: key);

  @override
  State<PatientSettingScreen> createState() => _PatientSettingScreenState();
}

class _PatientSettingScreenState extends State<PatientSettingScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientProfile',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Setting",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Personal information",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.grey,
                    size: 18.sp,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const PatientChangeInfo(text:'Name',hintText:'Ahmed Mohamed',),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.grey,
                    size: 18.sp,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const PatientChangeInfo(text:'Email',hintText:'ahmed20@gmail.com',),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.grey,
                    size: 18.sp,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const PatientChangeInfo(text:'Password',hintText:'.......',),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: MyColors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp, top: 6.sp, bottom: 6.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 7.0,
                        spreadRadius: 1.0,
                        offset: Offset(4, 4)), //BoxShadow
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      "State",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: MyColors.grey,
                          fontSize: 15.sp),
                    ),
                    const Spacer(),
                Transform.scale(
                  scale: 0.6.sp,
                  child: CupertinoSwitch(
                    value: switchValue,
                    activeColor: MyColors.darkBlue,

                    onChanged: (bool? value) {
                      setState(() {
                        switchValue = value ?? false;
                      },);}
                  ),
                )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp, top: 6.sp, bottom: 6.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 7.0,
                        spreadRadius: 1.0,
                        offset: Offset(4, 4)), //BoxShadow
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      "News",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: MyColors.grey,
                          fontSize: 15.sp),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.6.sp,
                      child: CupertinoSwitch(
                          value: switchValue,
                          activeColor: MyColors.darkBlue,

                          onChanged: (bool? value) {
                            setState(() {
                              switchValue = value ?? false;
                            },);}
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Help Center",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: MyColors.black),
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp, top: 13.sp, bottom: 13.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 7.0,
                        spreadRadius: 1.0,
                        offset: Offset(4, 4)), //BoxShadow
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      "FAQ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: MyColors.grey,
                          fontSize: 15.sp),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){ Navigator.pushNamed(context,'PatientHelpAndSupport');},
                        child: Icon(
                      Icons.arrow_forward_ios,
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
