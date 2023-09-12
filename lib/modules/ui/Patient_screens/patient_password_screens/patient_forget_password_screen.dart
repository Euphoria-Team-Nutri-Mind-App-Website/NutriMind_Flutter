import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientForgetPassword extends StatelessWidget {
  const PatientForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backPage: 'PatientLoginScreen'),
      body:Container(
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
                  style:AppTextStyle().textInAppBar.copyWith(fontSize:22.sp),),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Please enter your email address!",
                  style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w500) ,),
                SizedBox(
                  height: 40.h,
                ),
                MyTextField(
                    // controller: emailController,
                    hintText: 'Enter your email',
                    obscureText: false,
                    textType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Email must not be empty";
                      } else if (!val.contains("@") || !val.contains(".")) {
                        return "Enter a valid email";
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 28.h,
                ),
                 MyBlueButton(
                  width: double.infinity,
                    height: 55.h,
                    text: 'Send Code',
                    page: 'PatientVerificationScreen'),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
      bottomNavigationBar: BottomAppBar(
        height: 40.h,
          // color: MyColors.white,
          elevation: 0.sp,
          child: const MyTextGroup(
              staticText: "Remember Password ?",
              dynamicText: "  Log In",
              page: 'PatientLoginScreen'),
        )
    );
  }
}
