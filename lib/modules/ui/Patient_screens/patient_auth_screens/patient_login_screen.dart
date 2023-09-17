import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../blocs/auth_cubit/auth_cubit.dart';


class PatientLoginScreen extends StatefulWidget {
  const PatientLoginScreen({Key? key}) : super(key: key);

  @override
  State<PatientLoginScreen> createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'ContinueScreen',
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              Navigator.pushNamed(context, 'PatientNavBarScreen');
            } else if (state is LoginFailedState) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                    state.message,
                    style:
                        AppTextStyle().greyText.copyWith(color: MyColors.white),
                  ),
                  backgroundColor: MyColors.darkBlue,
                ),
              );
            }
          },
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.all(25.sp),
              color: MyColors.white,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To",
                      style: AppTextStyle()
                          .textInAppBar
                          .copyWith(fontWeight: FontWeight.w500),
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
                      height: 20.h,
                    ),
                    MyTextField(
                      controller: passwordController,
                      textType: TextInputType.number,
                      hintText: 'Password',
                      obscureText: obscureText,
                      suffixIcon: IconButton(
                        icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                        color: MyColors.grey,
                        onPressed: () {setState(() {obscureText = !obscureText;});},
                      ),
                      validator: (val) {
                          if (val.isEmpty) {
                            return "Password must not be empty";
                          } else if (val.length < 8) {
                            return "Password must be more than 7 numbers";
                          } else {
                            return null;
                          }
                        }
                        ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'PatientForgetPassword'),
                          child: Text("Forget Password?",
                              style: AppTextStyle()
                                  .greyText
                                  .copyWith(color: MyColors.black)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 38.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate() == true) {
                          BlocProvider.of<AuthCubit>(context).login(
                              email: emailController.text,
                              password: passwordController.text);
                        }
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
                              state is LoginLoadingState
                                  ? "loading....."
                                  : "Login",
                              style: AppTextStyle().textBlueButton),
                        ),
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
                        Text("Or Log in with",
                            style: AppTextStyle().greyText.copyWith(
                                color: MyColors.black, fontSize: 14.sp)),
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
                        const MySmallButton(
                            imageAsset: "assets/images/face.png"),
                        SizedBox(
                          width: 10.w,
                        ),
                        const MySmallButton(
                            imageAsset: "assets/images/google.png"),
                      ],
                    ),
                    SizedBox(
                      height: 90.h,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 40.h,
        elevation: 0.sp,
        child: const MyTextGroup(
            staticText: "Don’t have an account?",
            dynamicText: " Sign up",
            page: 'PatientSignUpScreen'),
      ),
    );
  }
}
