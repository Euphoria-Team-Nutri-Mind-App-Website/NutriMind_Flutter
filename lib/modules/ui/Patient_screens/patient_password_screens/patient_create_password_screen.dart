import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_password_screens/set_password_widget.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientCreatePasswordScreen extends StatefulWidget {
  const PatientCreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<PatientCreatePasswordScreen> createState() => _PatientCreatePasswordScreenState();
}

class _PatientCreatePasswordScreenState extends State<PatientCreatePasswordScreen> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(backPage: 'PatientVerificationScreen'),
        body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(25.sp),
              color: MyColors.white,
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
                      // controller: passwordController,
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
                      // controller: confirmPasswordController,
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
                  const Center(
                    child: SetPassword(
                      text: "Set password",
                      backText: "Login",
                      yourText: "Your reset",
                      nextScreen: "PatientLoginScreen",
                      DONE: "DONE",
                    ),
                  ),
                    const Expanded(child:SizedBox())
                ],
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
