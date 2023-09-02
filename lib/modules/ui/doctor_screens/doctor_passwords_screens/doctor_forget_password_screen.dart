import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';


class DoctorForgetPassword extends StatelessWidget {
  const DoctorForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(backPage: 'DoctorLoginScreen'),
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
                    "Forgot Password?",
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
                    "Please enter your email address!",
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
                    hintText: 'Enter your email',
                    obscureText: false,
                    textType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  const MyBlueButton(text: 'Send Code', page: 'DoctorVerificationScreen'),
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
              page: 'DoctorLoginScreen'),
        )
    );
  }
}
