import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_password_screens/set_password_widget.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

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
                    style: AppTextStyle().textInAppBar.copyWith(fontSize:24.sp)
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Create your new password to log in !",
                    style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w400) ,
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
