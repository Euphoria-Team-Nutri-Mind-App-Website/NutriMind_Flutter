import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';


class PatientLoginScreen extends StatefulWidget {
  const PatientLoginScreen({Key? key}) : super(key: key);

  @override
  State<PatientLoginScreen> createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backPage: 'ContinueScreen',),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(25.sp),
            color: MyColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome To",
                  style:AppTextStyle().textInAppBar.copyWith(fontWeight:FontWeight.w500),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Image(
                  image: const AssetImage(
                    "assets/images/logo.png",
                  ),
                  width: 160.w,
                ),
                SizedBox(
                  height: 45.h,
                ),
                const MyTextField(
                  hintText: 'Enter your email',
                  obscureText: false,
                  textType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const MyTextField(
                  textType: TextInputType.number,
                  hintText: 'Password',
                  obscureText: false,
                  suffixIcon:
                      Icon(Icons.remove_red_eye_outlined, color: MyColors.grey),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,'PatientForgetPassword');
                      },
                      child: Text(
                        "Forget Password?",
                        style: AppTextStyle().greyText.copyWith(color: MyColors.black)
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 38.h,
                ),
                MyBlueButton(
                    width: double.infinity,
                    height:55.h,
                    text: "Log IN",
                    page: 'PatientSetTallScreen',
                  ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      thickness: 1,
                      color: MyColors.grey,
                    )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Or Log in with",
                      style: AppTextStyle().greyText.copyWith(color: MyColors.black,fontSize: 14.sp)
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    const Expanded(
                        child: Divider(
                      thickness: 1,
                      color: MyColors.grey,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    const MySmallButton(imageAsset: "assets/images/face.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    const MySmallButton(imageAsset: "assets/images/google.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: BottomAppBar(
        height: 40.h,
        color: Colors.transparent,
        elevation: 0.sp,
        child: const MyTextGroup(
            staticText: "Don’t have an account?",
            dynamicText: " Sign up",
            page: 'PatientSignUpScreen'),
      ),
    );
  }
}
