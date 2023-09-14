import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart'as http;

import '../../../../shared/Constants/api_constants.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/constants.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import 'doctor_verification_screen.dart';

class DoctorForgetPassword extends StatefulWidget {
  const DoctorForgetPassword({Key? key}) : super(key: key);

  @override
  State<DoctorForgetPassword> createState() => _DoctorForgetPassword();
}

class _DoctorForgetPassword extends State<DoctorForgetPassword> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(backPage: 'DoctorLoginScreen'),
        body: Container(
          padding: EdgeInsets.all(25.sp),
          color: MyColors.white,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Forgot Password?",
                  style: AppTextStyle().textInAppBar.copyWith(
                      fontSize: 22.sp),),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Please enter your email address!",
                  style: AppTextStyle().greyText.copyWith(
                      fontSize: 13.sp, fontWeight: FontWeight.w500),),
                SizedBox(
                  height: 15.h,
                ),
                MyTextField(
                    controller: emailController,
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
                InkWell(
                  onTap: () async {
                    if (formKey.currentState!.validate() == true) {
                      var headers = {
                        'Accept': 'application/json',
                          'Authorization': 'Bearer ${accessToken!}',
                      };
                      var request = http.MultipartRequest('GET',
                          Uri.parse('$BASEURl/doctor/api/doctor/generate-otp?email=${emailController.text}'));

                      request.headers.addAll(headers);

                      http.StreamedResponse response = await request.send();

                      if (response.statusCode == 200) {
                        print(await response.stream.bytesToString());
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=>
                                  DoctorVerificationScreen(email: emailController.text,)));
                      }
                      else {
                        print(response.reasonPhrase);
                      }
                    }
                    //Navigator.pushNamed(context, 'PatientVerificationScreen');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: MyColors.darkBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Send Code",
                              style: AppTextStyle().textBlueButton),
                        ],
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 40.h,
          // color: MyColors.white,
          elevation: 0.sp,
          child: const MyTextGroup(
              staticText: "Remember Password ?",
              dynamicText: "  Log In",
              page: 'DoctorLoginScreen'),
        )
    );
  }
}
