import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/Constants/colors.dart';
import '../../../shared/widgets/screens_widgets.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:MyColors.white,
        elevation: 0.sp,
        leading: Padding(
          padding: EdgeInsets.all(18.sp),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'VerificationScreen');
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'VerificationScreen');
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: MyColors.black,
                          size: 30.sp,
                        )),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Create your new password to log in!",
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
                  textType: TextInputType.number,
                  hintText: 'Password',
                  obscureText: false,
                  suffixIcon:
                  Icon(Icons.remove_red_eye_outlined, color: MyColors.grey),
                ),
                SizedBox(
                  height: 28.h,
                ),
                const MyTextField(
                  textType: TextInputType.number,
                  hintText: 'Confirm Password',
                  obscureText: false,
                  suffixIcon:
                  Icon(Icons.remove_red_eye_outlined, color: MyColors.grey),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'LoginScreen');
                                },
                                child: Center(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        width: 140.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.r),
                                          border: Border.all(
                                              color: MyColors.darkBlue),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: MyColors.darkBlue,
                                              offset: Offset(
                                                5.0,
                                                5.0,
                                              ),
                                              blurRadius: 10.0,
                                              spreadRadius: 2.0,
                                            ), //BoxShadow
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(0.0, 0.0),
                                              blurRadius: 0.0,
                                              spreadRadius: 0.0,
                                            ), //BoxShadow
                                          ],
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Back to Log in",
                                            style: TextStyle(
                                                color: MyColors.darkBlue,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.h,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                            title: Column(
                              children: [
                                Center(
                                    child: Image.asset(
                                        "assets/images/true.png")),
                                SizedBox(height: 17.h),
                                const Text(
                                  "your reset",
                                  style: TextStyle(
                                      color: MyColors.grey,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  "DONE",
                                  style: TextStyle(
                                      color: MyColors.lightBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      fontFamily: 'Poppins'),
                                ),
                              ],
                            ),
                            contentPadding: EdgeInsets.all(20.sp),
                          ));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: MyColors.darkBlue,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          "set password",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: MyColors.white),
                        ),
                      ),
                    ),
                  ),
                ),
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
