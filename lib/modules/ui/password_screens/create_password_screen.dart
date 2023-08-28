import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
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
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: MyColors.black,
                          size: 30,
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
                //const MyBlueButton(text: 'set password'),
                Center(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      //Navigator.of(context).pop();
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
                                                  BorderRadius.circular(10),
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
                                          const SizedBox(
                                            height: 14,
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
                                    const SizedBox(height: 17),
                                    const Text(
                                      "your reset",
                                      style: TextStyle(
                                          color: MyColors.grey,
                                          fontFamily: 'Poppins'),
                                    ),
                                    const Text(
                                      "DONE",
                                      style: TextStyle(
                                          color: MyColors.lightBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                                contentPadding: EdgeInsets.all(20.0),
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
