import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/forget_password/generate_otp_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientForgetPassword extends StatefulWidget {
  const PatientForgetPassword({Key? key}) : super(key: key);

  @override
  State<PatientForgetPassword> createState() => _PatientForgetPasswordState();
}

class _PatientForgetPasswordState extends State<PatientForgetPassword> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..generateOtpModel,
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          if (state is GenerateOtpSuccessState) {
            Navigator.pushNamed(context, 'PatientVerificationScreen');
          } else if (state is GenerateOtpWithFailureState) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text(
                  "failed",
                  style:
                  AppTextStyle().greyText.copyWith(color: MyColors.white),
                ),
                backgroundColor: MyColors.darkBlue,
              ),
            );
          }
        },
        builder: (context, state) {
          GenerateOtpModel? cubit = LayoutCubit.get(context).generateOtpModel;
          return Scaffold(
              appBar: MyAppBar(backPage: 'PatientLoginScreen'),
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
                      Text(
                        "your otpCode is ${cubit?.oTPCode}",
                        style: AppTextStyle().greyText.copyWith(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),),
                      SizedBox(
                        height: 40.h,
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
                      // MyBlueButton(
                      //  width: double.infinity,
                      //    height: 55.h,
                      //    text: 'Send Code',
                      //    page: 'PatientVerificationScreen'),
                      InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            // BlocProvider.of<LayoutCubit>(context).generateOtpModel!(
                            //     email: emailController.text,
                            // );
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
                                Text("'Send Code'",
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
                    page: 'PatientLoginScreen'),
              )
          );
        },
      ),
    );
  }
}
