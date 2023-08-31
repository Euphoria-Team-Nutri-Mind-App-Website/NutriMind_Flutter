
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class DoctorSignUpScreen extends StatelessWidget {
  const DoctorSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'ContinueScreen',
        pageTitle: Row(
          children: [
            SizedBox(width: 70.w,),
            const Image(image: AssetImage("assets/images/Registration.png"))
          ],
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
                Row(
                  children: [
                    Text(
                      "Welcome to ",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: MyColors.grey),
                    ),
                    Text(
                      "Nutri Mind",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: MyColors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                const SmallTextField(
                  hintText: 'Enter your name',
                  obscureText: false,
                  textType: TextInputType.name,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const SmallTextField(
                  hintText: 'Email',
                  obscureText: false,
                  textType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const SmallTextField(
                  hintText: 'Phone Number',
                  obscureText: false,
                  textType: TextInputType.phone,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const SmallTextField(
                  hintText: 'Address',
                  obscureText: false,
                  textType: TextInputType.name,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const SmallTextField(
                  hintText: 'National Id',
                  obscureText: false,
                  textType: TextInputType.phone,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SmallTextField(
                  prefixIcon:Image(image: const AssetImage('assets/images/vecteezy.png',),height: 2.h,),
                  hintText: 'Credit number',
                  obscureText: false,
                  textType: TextInputType.phone,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const SmallTextField(
                  hintText: 'Gender',
                  obscureText: false,
                  textType: TextInputType.text,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const SmallTextField(
                  obscureText: false,
                  hintText: 'Qualification',
                  textType: TextInputType.text,
                ),
                SizedBox(
                  height: 28.h,
                ),
                const MyBlueButton(text: "Register", page: 'DoctorScheduleScreen'),
                SizedBox(
                  height: 28.h,
                ),
                const MyTextGroup(
                    staticText: "Already have an account?",
                    dynamicText: " Log in",
                    page: 'DoctorLoginScreen'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
