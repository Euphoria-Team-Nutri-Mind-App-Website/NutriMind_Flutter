// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../shared/Constants/colors.dart';
// import '../../../../shared/Constants/text_theme.dart';
// import '../../../../shared/widgets/screens_widgets.dart';
// import '../../../blocs/auth_cubit/auth_cubit.dart';
// import '../patient_set_tall_weight_state_screens/patient_set_tall.dart';
// import '../../../../shared/widgets/default_items.dart';
//
// class PatientSignUpScreen extends StatelessWidget {
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final ageController = TextEditingController();
//   final genderController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   //static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   PatientSignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthCubit, AuthState>(
//       listener: (context, state) {
//         // if( state is RegisterLoadingState )
//         // {
//         //   showDialog(
//         //       context: context,
//         //       builder: (context) => const AlertDialog(
//         //         content: Center(
//         //           child: Text(
//         //             "wait",
//         //             style: TextStyle(
//         //               fontSize: 22,
//         //                 color: MyColors.white),
//         //           ),
//         //         ),
//         //         backgroundColor: MyColors.darkBlue,
//         //       ));
//         // }
//         // else if( state is RegisterFailedState )
//         // {
//         //   showDialog(
//         //           context: context,
//         //           builder: (context) => AlertDialog(
//         //                 content: Text(
//         //                   state.message,
//         //                   style: const TextStyle(color: MyColors.white),
//         //                 ),
//         //                 backgroundColor: Colors.red,
//         //               ));
//         // }
//         // else if ( state is RegisterSuccessState )
//         // {
//         //   Navigator.pop(context);
//         //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PatientSetTallScreen()));
//         // }
//
//         if (state is RegisterSuccessState) {
//           Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const PatientSetTallScreen()));
//         } else if (state is RegisterFailedState) {
//           showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                     content: Text(
//                       state.message,
//                       style: const TextStyle(color: MyColors.white),
//                     ),
//                     backgroundColor: MyColors.darkBlue,
//                   ));
//         }
//       },
//       builder: (context, state) {
//         return Scaffold(
//           appBar: MyAppBar(backPage: 'ContinueScreen'),
//           body: SingleChildScrollView(
//             child: SafeArea(
//               child: Container(
//                 padding:
//                     EdgeInsets.only(left: 25.sp, right: 25.sp, bottom: 25.sp),
//                 color: MyColors.white,
//                 child: Form(
//                   key: formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Registration",
//                         style: AppTextStyle()
//                             .textInAppBar
//                             .copyWith(fontSize: 28.sp),
//                       ),
//                       SizedBox(
//                         height: 7.h,
//                       ),
//                       Text("create your account",
//                           style: AppTextStyle().greyText),
//                       SizedBox(
//                         height: 26.h,
//                       ),
//                       MyTextField(
//                         controller: nameController,
//                         hintText: 'Username',
//                         obscureText: false,
//                         textType: TextInputType.text,
//                       ),
//                       SizedBox(
//                         height: 18.h,
//                       ),
//                       MyTextField(
//                         controller: emailController,
//                         hintText: 'Email',
//                         obscureText: false,
//                         textType: TextInputType.emailAddress,
//                       ),
//                       SizedBox(
//                         height: 18.h,
//                       ),
//                       MyTextField(
//                           controller: ageController,
//                           hintText: 'Age',
//                           obscureText: false,
//                           textType: TextInputType.number),
//                       SizedBox(
//                         height: 18.h,
//                       ),
//                       MyTextField(
//                           controller: genderController,
//                           hintText: 'Gender',
//                           obscureText: false,
//                           textType: TextInputType.text),
//                       SizedBox(
//                         height: 18.h,
//                       ),
//                       MyTextField(
//                         controller: passwordController,
//                         textType: TextInputType.number,
//                         hintText: 'Password',
//                         obscureText: false,
//                         suffixIcon: const Icon(Icons.remove_red_eye_outlined,
//                             color: MyColors.grey),
//                       ),
//                       SizedBox(
//                         height: 18.h,
//                       ),
//                       MyTextField(
//                         controller: confirmPasswordController,
//                         textType: TextInputType.number,
//                         hintText: 'Confirm Password',
//                         obscureText: false,
//                         suffixIcon: const Icon(Icons.remove_red_eye_outlined,
//                             color: MyColors.grey),
//                       ),
//                       SizedBox(
//                         height: 18.h,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           if (formKey.currentState!.validate()==true) {
//                             BlocProvider.of<AuthCubit>(context).patientRegister(
//                               name: nameController.text,
//                               email: emailController.text,
//                               password: passwordController.text,
//                               password_confirmation:
//                                   confirmPasswordController.text,
//                               age: ageController.text,
//                               gender: genderController.text,
//                             );
//                             //Navigator.pushNamed(context, 'PatientSetTallScreen');
//                           }
//                         },
//                         child: Container(
//                           width: double.infinity,
//                           height: 60.h,
//                           decoration: BoxDecoration(
//                             color: MyColors.darkBlue,
//                             borderRadius: BorderRadius.circular(10.r),
//                           ),
//                           child: Center(
//                             child: Text(
//                                 state is RegisterLoadingState
//                                     ? "loading....."
//                                     : "Sign Up",
//                                 style: AppTextStyle().textBlueButton),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 25.h,
//                       ),
//                       Row(
//                         children: [
//                           const Expanded(
//                               child: Divider(
//                             thickness: 1,
//                             color: MyColors.grey,
//                           )),
//                           SizedBox(
//                             width: 15.w,
//                           ),
//                           Text(
//                             "Or Sign Up with",
//                             style: AppTextStyle().greyText.copyWith(
//                                 color: MyColors.black, fontSize: 14.sp),
//                           ),
//                           SizedBox(
//                             width: 15.w,
//                           ),
//                           const Expanded(
//                               child: Divider(
//                             thickness: 1,
//                             color: MyColors.grey,
//                           )),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30.h,
//                       ),
//                       Row(
//                         children: [
//                           const MySmallButton(
//                               imageAsset: "assets/images/face.png"),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           const MySmallButton(
//                               imageAsset: "assets/images/google.png"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30.h,
//                       ),
//                       const MyTextGroup(
//                           staticText: "Already have an account?",
//                           dynamicText: " Log in",
//                           page: 'PatientLoginScreen'),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/screens_widgets.dart';
//import '../../../blocs/auth_cubit/auth_cubit.dart';
//import '../patient_set_tall_weight_state_screens/patient_set_tall.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientSignUpScreen extends StatefulWidget {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<AuthCubit, AuthState>(
    //   listener: (context, state) {
    //     if (state is RegisterSuccessState) {
    //       Navigator.pushNamed(context, 'PatientNavBarScreen');
    //     } else if (state is RegisterFailedState) {
    //       showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           content: Text(
    //             state.message,
    //             style:
    //             AppTextStyle().greyText.copyWith(color: MyColors.white),
    //           ),
    //           backgroundColor: MyColors.darkBlue,
    //         ),
    //       );
    //     }
    //     if (state is RegisterSuccessState) {
    //       Navigator.pushReplacement(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) => const PatientSetTallScreen()));
    //     } else if (state is RegisterFailedState) {
    //       showDialog(
    //           context: context,
    //           builder: (context) => AlertDialog(
    //                 content: Text(
    //                   state.message,
    //                   style: const TextStyle(color: MyColors.white),
    //                 ),
    //                 backgroundColor: MyColors.darkBlue,
    //               ));
    //     }
    //   },
    //builder: (context, state) {
    return Scaffold(
      appBar: MyAppBar(backPage: 'ContinueScreen'),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, bottom: 25.sp),
            color: MyColors.white,
            child: Form(
              key: PatientSignUpScreen.formKey,
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
                        } else if (val != 'female' ||
                            val != 'Female' ||
                            val != 'male' ||
                            val != 'Male') {
                          return "Enter a valid Gender";
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 18.h,
                  ),
                  MyTextField(
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
                    height: 18.h,
                  ),
                  MyTextField(
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
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () async {
                      var headers = {'Accept': 'application/json'};
                      var request = http.MultipartRequest(
                          'POST',
                          Uri.parse(
                              'http://heda.azq1.com/patient/api/patient/register'));
                      request.fields.addAll({
                        'name': nameController.text,
                        'email': emailController.text,
                        'password': passwordController.text,
                        'password_confirmation': confirmPasswordController.text,
                        'gender': genderController.text,
                        'age': ageController.text,
                      });
                      request.headers.addAll(headers);
                      http.StreamedResponse response = await request.send();

                      if (response.statusCode == 200) {
                        Navigator.pushNamed(context, 'PatientNavBarScreen');
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text(
                                    "${response.reasonPhrase}",
                                    style:
                                        const TextStyle(color: MyColors.white),
                                  ),
                                  backgroundColor: MyColors.darkBlue,
                                ));
                        print(response.reasonPhrase);
                      }

                      // if (formKey.currentState!.validate()==true) {
                      //   BlocProvider.of<AuthCubit>(context).patientRegister(
                      //     name: nameController.text,
                      //     email: emailController.text,
                      //     password: int.parse(passwordController.text),
                      //     password_confirmation:
                      //         int.parse(confirmPasswordController.text),
                      //     age:int.parse(ageController.text),
                      //     gender: genderController.text,
                      //   );
                      //   //Navigator.pushNamed(context, 'PatientSetTallScreen');
                      // }
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
                            // state is RegisterLoadingState
                            //     ? "loading....."
                            //     :
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
      //  );
      // },
    );
  }
}
