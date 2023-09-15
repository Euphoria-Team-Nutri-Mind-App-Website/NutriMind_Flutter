import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../blocs/auth_cubit/auth_cubit.dart';
import '../patient_set_tall_weight_state_screens/patient_set_tall.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientSignUpScreen extends StatefulWidget {
  //static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  PatientSignUpScreen({Key? key}) : super(key: key);

  @override
  State<PatientSignUpScreen> createState() => _PatientSignUpScreenState();
}

class _PatientSignUpScreenState extends State<PatientSignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final vodafoneCashController = TextEditingController();
  final creditCardNumberController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool obscureText1 = false;
  bool obscureText2 = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
      if( state is RegisterLoadingState )
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
      else if( state is RegisterFailedState )
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
      else if ( state is RegisterSuccessState )
      {
        Navigator.pop(context);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const PatientSetTallScreen()));
      }
    },
    builder: (context, state) {
    return Scaffold(
      appBar: MyAppBar(backPage: 'ContinueScreen'),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, bottom: 25.sp),
            color: MyColors.white,
            child: Form(
              //key: PatientSignUpScreen.formKey,
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Registration",
                    style:
                    AppTextStyle().textInAppBar.copyWith(fontSize: 28.sp),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text("create your account", style: AppTextStyle().greyText),
                  SizedBox(
                    height: 26.h,
                  ),
                  MyTextField(
                      controller: nameController,
                      hintText: 'Username',
                      obscureText: false,
                      textType: TextInputType.text,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Username must not be empty";
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 18.h,
                  ),
                  MyTextField(
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
                    height: 18.h,
                  ),
                  MyTextField(
                      controller: ageController,
                      hintText: 'Age',
                      obscureText: false,
                      textType: TextInputType.text,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Age must not be empty";
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 18.h,
                  ),
                  MyTextField(
                      controller: genderController,
                      hintText: 'Gender',
                      obscureText: false,
                      textType: TextInputType.text,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Gender must not be empty";
                        }else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 18.h,
                  ),
                  MyTextField(
                    controller: creditCardNumberController,
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
                    height: 18.h,
                  ),
                  MyTextField(
                    controller: vodafoneCashController,
                    prefixIcon: const Image(
                      image: AssetImage(
                        'assets/images/voda.png',
                      ),
                    ),
                    hintText: 'vodafone cash number',
                    obscureText: false,
                    textType: TextInputType.phone,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "vodafone cash number must not be empty";
                        }else if(val.length != 11){
                          return "vodafone cash number must be 11 numbers";
                        }else{
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 18.h,
                  ),
                  MyTextField(
                      controller: passwordController,
                      textType: TextInputType.phone,
                      hintText: 'Password',
                      obscureText: obscureText1,
                      suffixIcon: IconButton(
                        icon: Icon(obscureText1
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: MyColors.grey,
                        onPressed: () {
                          setState(() {
                            obscureText1 = !obscureText1;
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
                    height: 18.h,
                  ),
                  MyTextField(
                      controller: confirmPasswordController,
                      textType: TextInputType.phone,
                      hintText: 'Confirm Password',
                      obscureText: obscureText2,
                      suffixIcon: IconButton(
                        icon: Icon(obscureText2
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: MyColors.grey,
                        onPressed: () {
                          setState(() {
                            obscureText2 = !obscureText2;
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
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () async {
                      if (formKey.currentState!.validate()==true) {
                        BlocProvider.of<AuthCubit>(context).patientRegister(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          password_confirmation:confirmPasswordController.text,
                          age:ageController.text,
                          gender: genderController.text,
                          vodafone_cash: vodafoneCashController.text,
                          credit_card_number:creditCardNumberController.text ,
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
                            "Sign Up",
                            style: AppTextStyle().textBlueButton),
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
                        style: AppTextStyle()
                            .greyText
                            .copyWith(color: MyColors.black, fontSize: 14.sp),
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
    );
  }
}