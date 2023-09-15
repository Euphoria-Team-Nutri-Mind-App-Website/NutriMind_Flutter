import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../blocs/doctor_cubit/auth_cubit/doctor_auth_cubit.dart';
import '../doctor_profile/doctor_profile.dart';
import 'doctor_choose_time_screen.dart';

class DoctorSignUpScreen extends StatefulWidget {
  const DoctorSignUpScreen({Key? key}) : super(key: key);

  @override
  State<DoctorSignUpScreen> createState() => _DoctorSignUpScreenState();
}

class _DoctorSignUpScreenState extends State<DoctorSignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final nationalIdController = TextEditingController();
  final genderController = TextEditingController();
  final qualificationController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final experienceYearController = TextEditingController();
  final priceOfSessionController = TextEditingController();
  final vodafoneCashNumberController = TextEditingController();
  final creditNumberController = TextEditingController();
  final numberController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorAuthCubit, DoctorAuthState>(
      listener: (context, state) {
        if( state is DoctorRegisterLoadingState )
        {
          showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                content: Text(
                  "wait",
                  style: TextStyle(color:MyColors.white),
                ),
                backgroundColor: MyColors.darkBlue,
              ));
        }
        else if( state is DoctorRegisterFailedState )
        {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text(
                  state.message,
                  style: const TextStyle(color:MyColors.white),
                ),
                backgroundColor: MyColors.darkBlue,
              ));
        }
        else if ( state is DoctorRegisterSuccessState )
        {
          Navigator.pop(context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DoctorProfile()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            backPage: 'ContinueScreen',
            pageTitle: Row(
              children: [
                SizedBox(
                  width: 70.w,
                ),
                Image(
                  image: const AssetImage("assets/images/Registration.png"),
                  width: 110.w,
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.all(25.sp),
                color: MyColors.white,
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Welcome to ",
                              style:
                              AppTextStyle().greyText.copyWith(fontSize: 15.sp)),
                          Text("Nutri Mind",
                              style: AppTextStyle()
                                  .textInAppBar
                                  .copyWith(fontSize: 15.sp)),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: nameController,
                          hintText: 'Username',
                          obscureText: false,
                          textType: TextInputType.name,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Username must not be empty";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: emailController,
                          hintText: 'Email',
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
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: nationalIdController,
                          hintText: 'National Id',
                          obscureText: false,
                          textType: TextInputType.phone,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "National Id must not be empty";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: genderController,
                          hintText: 'Gender',
                          obscureText: false,
                          textType: TextInputType.text,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Gender must not be empty";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                       SmallTextField(
                        controller: qualificationController,
                        obscureText: false,
                        hintText: 'Qualification',
                        textType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: experienceYearController,
                        obscureText: false,
                        hintText: 'Experience years',
                        textType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: priceOfSessionController,
                        obscureText: false,
                        hintText: 'Price of session',
                        textType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                          controller: passwordController,
                          textType: TextInputType.text,
                          hintText: 'Password',
                          obscureText: false,
                          suffixIcon: IconButton(
                            icon: Icon(obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: MyColors.grey,
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Password must not be empty";
                            } else if (val.length < 8) {
                              return "Password must be more than 7 numbers";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                          controller: confirmPasswordController,
                          textType: TextInputType.text,
                          hintText: 'Confirm Password',
                          obscureText: false,
                          suffixIcon: IconButton(
                            icon: Icon(obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: MyColors.grey,
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Confirm Password must not be empty";
                            } else if (val != passwordController.text) {
                              return "Password doesn\'t match";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(height: 15.h),
                      SmallTextField(
                        controller: creditNumberController,
                        prefixIcon: const Image(
                          image: AssetImage(
                            'assets/images/vecteezy.png',
                          ),
                        ),
                        hintText: 'Credit number',
                        obscureText: false,
                        textType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SmallTextField(
                        controller: vodafoneCashNumberController,
                        prefixIcon: const Image(
                          image: AssetImage(
                            'assets/images/voda.png',
                          ),
                        ),
                        hintText: 'vodafone cash number',
                        obscureText: false,
                        textType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'DoctorChooseTimeScreen');
                        },
                        child: Container(
                          padding: EdgeInsets.all(14.sp),
                          decoration: BoxDecoration(
                              color: MyColors.lightGrey,
                              borderRadius: BorderRadius.circular(15.r),
                              border: Border.all(color: MyColors.darkBlue)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Select time of work",
                                  style: AppTextStyle().greyText
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.grey,
                                size: 20.sp,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      InkWell(
                        onTap: () async {
                          if (formKey.currentState!.validate()==true) {
                            BlocProvider.of<DoctorAuthCubit>(context).doctorRegister(
                              name: nameController.text,
                              email: emailController.text,
                              national_id: nationalIdController.text,
                              gender: genderController.text,
                              qualification: qualificationController.text,
                              password: passwordController.text,
                              password_confirmation:confirmPasswordController.text,
                              experience_years: experienceYearController.text,
                              credit_card_number: creditNumberController.text,
                              vodafone_cash: vodafoneCashNumberController.text,
                              price: priceOfSessionController.text,
                            );
                            //Navigator.pushNamed(context, 'PatientSetTallScreen');
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
                                "Register",
                                style: AppTextStyle().textBlueButton),
                          ),
                        ),
                      ),
                      // MyBlueButton(
                      //     text: "Register",
                      //     page: 'DoctorProfile',
                      //     width: double.infinity,
                      //     height: 55.h),
                      SizedBox(
                        height: 15.h,
                      ),
                      const MyTextGroup(
                          staticText: "Already have an account ?",
                          dynamicText: " Log in",
                          page: 'DoctorLoginScreen'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
