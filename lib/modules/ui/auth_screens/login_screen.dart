import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/Constants/colors.dart';
import '../../../shared/widgets/screens_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.sp,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'ContinueScreen');
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: MyColors.black,
              size: 30,
            )),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(25.sp),
            color: MyColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome To",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.sp,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Image(
                  image: const AssetImage(
                    "assets/images/logo.png",
                  ),
                  width: 180.w,
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
                        Navigator.pushNamed(context, 'ForgetPassword');
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 38.h,
                ),
                InkWell(
                  child: MyBlueButton(
                    text: "Log IN",
                    page: 'HomeScreen',
                  ),
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
                      style: TextStyle(
                          color: MyColors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
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
                    const MySmallButton(imageAsset: "assets/images/apple.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0.sp,
        child: const MyTextGroup(
            staticText: "Don’t have an account?",
            dynamicText: " Sign up",
            page: 'SignUpScreen'),
      ),
    );
  }
}
