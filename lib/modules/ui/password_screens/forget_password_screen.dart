import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/Constants/colors.dart';
import '../../../shared/widgets/screens_widgets.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'SignUpScreen');
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: MyColors.black,
                size: 30,
              )),
        ),
      ),
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
                MyBlueButton(text: 'Send Code', page: 'VerificationScreen'),
                SizedBox(
                  height: 320.h,
                ),
                const MyTextGroup(
                    staticText: 'Remember Password?',
                    dynamicText: '  Log In',
                    page: 'LoginScreen')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
