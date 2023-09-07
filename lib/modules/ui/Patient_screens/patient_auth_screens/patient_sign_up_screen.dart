import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../blocs/auth_cubit/auth_cubit.dart';
import '../patient_home_screen/patient_nav_bar.dart';
import '../patient_set_tall_weight_state_screens/patient_set_tall.dart';

class PatientSignUpScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  PatientSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is RegisterSuccessState) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const PatientSetTallScreen()));
          } else if (state is RegisterFailedState) {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      content: Text(
                        state.message,
                        style: const TextStyle(color: MyColors.white),
                      ),
                      backgroundColor: MyColors.darkBlue,
                    ));
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: MyAppBar(backPage: 'ContinueScreen'),
            body: SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 25.sp, right: 25.sp, bottom: 25.sp),
                  color: MyColors.white,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Registration",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp,
                              color: MyColors.black),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "create your account",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: MyColors.grey),
                        ),
                        SizedBox(
                          height: 26.h,
                        ),
                        MyTextField(
                            controller: nameController,
                            hintText: 'Username',
                            obscureText: false,
                            textType: TextInputType.text),
                        SizedBox(
                          height: 18.h,
                        ),
                        MyTextField(
                            controller: emailController,
                            hintText: 'Email',
                            obscureText: false,
                            textType: TextInputType.emailAddress),
                        SizedBox(
                          height: 18.h,
                        ),
                        MyTextField(
                            controller: emailController,
                            hintText: 'Age',
                            obscureText: false,
                            textType: TextInputType.emailAddress),
                        SizedBox(
                          height: 18.h,
                        ),
                        MyTextField(
                            controller: emailController,
                            hintText: 'Gender',
                            obscureText: false,
                            textType: TextInputType.emailAddress),
                        SizedBox(
                          height: 18.h,
                        ),
                        MyTextField(
                            controller: emailController,
                            hintText: 'National ID',
                            obscureText: false,
                            textType: TextInputType.emailAddress),
                        SizedBox(
                          height: 18.h,
                        ),
                        MyTextField(
                          controller: passwordController,
                          textType: TextInputType.number,
                          hintText: 'Password',
                          obscureText: true,
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined,
                              color: MyColors.grey),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        MyTextField(
                          controller: confirmPasswordController,
                          textType: TextInputType.number,
                          hintText: 'Confirm Password',
                          obscureText: true,
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined,
                              color: MyColors.grey),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<AuthCubit>(context).register(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  confirmPassword:
                                      confirmPasswordController.text);
                            }
                            Navigator.pushNamed(context, 'PatientSetTallScreen');
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
                                state is RegisterLoadingState
                                    ? "loading....."
                                    : "Sign Up",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
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
                              "Or Sign Up with",
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
                          height: 30.h,
                        ),
                        const MyTextGroup(
                            staticText: "Already have an account?",
                            dynamicText: " Log in",
                            page: 'PatientLoginScreen'),

                          ],
                        ),
                    ),
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}
