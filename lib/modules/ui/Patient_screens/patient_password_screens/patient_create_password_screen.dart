import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_password_screens/set_password_widget.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientCreatePasswordScreen extends StatelessWidget {
  const PatientCreatePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(backPage: 'PatientVerificationScreen'),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(25.sp),
              color: MyColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Create password",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 22.sp,
                        color: MyColors.black),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Create your new password to log in !",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: MyColors.grey),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const MyTextField(
                    textType: TextInputType.number,
                    hintText: 'Password',
                    obscureText: false,
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,
                        color: MyColors.grey),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  const MyTextField(
                    textType: TextInputType.number,
                    hintText: 'Confirm Password',
                    obscureText: false,
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,
                        color: MyColors.grey),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  const Center(
                    child: SetPassword(
                      text: "Set password",
                      backText: "Login",
                      yourText: "Your reset",
                      nextScreen: "PatientLoginScreen",
                      DONE: "DONE",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 40.h,
          color: Colors.transparent,
          elevation: 0.sp,
          child: const MyTextGroup(
              staticText: "Remember Password?",
              dynamicText: "  Log In",
              page: 'PatientLoginScreen'),
        ));
  }
}
