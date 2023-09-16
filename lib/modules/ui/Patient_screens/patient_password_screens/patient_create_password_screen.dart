import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart'as http;
//import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_password_screens/set_password_widget.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/api_constants.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientCreatePasswordScreen extends StatefulWidget {
  const PatientCreatePasswordScreen({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  State<PatientCreatePasswordScreen> createState() => _PatientCreatePasswordScreenState();
}

class _PatientCreatePasswordScreenState extends State<PatientCreatePasswordScreen> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(backPage: 'PatientVerificationScreen'),
        body: SafeArea(
            child: Container(
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
                      "Create password",
                      style: AppTextStyle().textInAppBar.copyWith(fontSize:24.sp)
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Create your new password to log in !",
                      style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w500) ,
                    ),
                    SizedBox(
                      height: 40.h,
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
                      height: 25.h,
                    ),
                    MyTextField(
                        controller: confirmPasswordController,
                        textType: TextInputType.text,
                        hintText: 'Confirm Password',
                        obscureText: false,
                        suffixIcon: IconButton(
                          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                          color: MyColors.grey,
                          onPressed: () {setState(() {obscureText = !obscureText;});},
                        ),                      validator: (val) {
                          if (val.isEmpty) {
                            return "Confirm Password must not be empty";}
                          // } else if (val != passwordController.text) {
                          //   return "Password doesn\'t match";
                          // }
                          else {
                            return null;
                          }
                        }
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Center(
                      /*child: SetPassword(
                        text: "Set password",
                        backText: "Login",
                        yourText: "Your reset",
                        nextScreen: "PatientLoginScreen",
                        DONE: "DONE",
                      ),*/
                      child: InkWell(
                        onTap: () {
                          showGeneralDialog(
                            context: context,
                            pageBuilder: (BuildContext context, Animation<double> animation,
                                Animation<double> secondaryAnimation) =>
                                AlertDialog(
                                  actions: [
                                    TextButton(
                                      onPressed: () async {
                                        if (formKey.currentState!.validate()) {
                                          var headers = {
                                          'Accept': 'application/json'
                                        };
                                        var request = http.MultipartRequest('POST',
                                            Uri.parse(
                                              //https://heda.azq1.com/NutriMind/public/patient/api/patient/reset-password?email=${widget.email}
                                                //'http://heda.azq1.com/patient/api/patient/reset-password?email=${widget.email}'));
                                                '$BASEURl/patient/api/patient/reset-password?email=${widget.email}'));
                                        request.fields.addAll({
                                          'password': passwordController.text,
                                          'password_confirmation': confirmPasswordController.text
                                        });

                                        request.headers.addAll(headers);

                                        http.StreamedResponse response = await request.send();

                                        if (response.statusCode == 200) {
                                          print(await response.stream.bytesToString());
                                        Navigator.pushNamed(context, 'PatientLoginScreen');
                                        }
                                        else {
                                        print(response.reasonPhrase);
                                        }}
                                      },
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 140.w,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.r),
                                                border: Border.all(color: MyColors.darkBlue),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: MyColors.darkBlue,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 1.0,
                                                  ), //BoxShadow
                                                  BoxShadow(
                                                    color: Colors.white,
                                                    offset: Offset(0.0, 0.0),
                                                    blurRadius: 0.0,
                                                    spreadRadius: 0.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text("Back to Login",
                                                    style: AppTextStyle().greyText.copyWith(
                                                        color: MyColors.darkBlue,
                                                        fontWeight: FontWeight.w600)),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 14.h,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                  title: Padding(
                                    padding: EdgeInsets.all(15.sp),
                                    child: Column(
                                      children: [
                                        Center(child: Image.asset("assets/images/true.png")),
                                        SizedBox(height: 17.h),
                                        Text("Your reset",
                                            style: AppTextStyle().greyText.copyWith(fontSize: 16.sp)),
                                        SizedBox(height: 10.h),
                                        Text("DONE",
                                            style: AppTextStyle().greyText.copyWith(
                                                color: MyColors.darkBlue,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.sp)),
                                      ],
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.all(10.sp),
                                ),
                            transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
                              filter: ImageFilter.blur(
                                  sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
                              child: FadeTransition(
                                opacity: anim1,
                                child: child,
                              ),
                            ),
                          );
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
                              "Set password",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: MyColors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                      const Expanded(child:SizedBox())
                  ],
                ),
              ),
            ),
          ),
        bottomNavigationBar: BottomAppBar(
          height: 40.h,
          color: MyColors.white,
          elevation: 0.sp,
          child: const MyTextGroup(
              staticText: "Remember Password?",
              dynamicText: "  Log In",
              page: 'PatientLoginScreen'),
        ));
  }
}
