import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';


class PatientVerificationScreen extends StatefulWidget {
  const PatientVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PatientVerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<PatientVerificationScreen> {
  bool _onEditing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backPage: 'PatientForgetPassword'),
      body: SafeArea(
          child: Container(
            color: MyColors.white,
            padding: EdgeInsets.all(25.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Verification",
                  style: AppTextStyle().textInAppBar.copyWith(fontSize:24.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Please enter the code sent on your email address!",
                  textAlign: TextAlign.center,
                  style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w500) ,
          ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VerificationCode(
                      itemSize: 60.sp,
                      fullBorder: true,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: MyColors.black),
                      keyboardType: TextInputType.number,
                      underlineColor: MyColors.darkBlue,
                      length: 4,
                      cursorColor: MyColors.darkBlue,
                      clearAll: Padding(
                        padding: EdgeInsets.all(3.sp),
                        child: Text(
                          'clear all',
                          style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w400,color: MyColors.darkBlue ,
                      ),
                        ),
                      ),
                      onCompleted: (String value) {
                        setState(() {});
                      },
                      onEditing: (bool value) {
                        setState(() {
                          _onEditing = value;
                        });
                        if (!_onEditing) FocusScope.of(context).unfocus();
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(5.sp),
                  child: Center(
                    child: _onEditing
                        ? Text(
                      'Please enter full code',
                      style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w400) ,
                    )
                        : const Text(''),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                 MyBlueButton(text: 'Verify', page: 'PatientCreatePasswordScreen',width: double.infinity,height: 55.h,),
                const Expanded(child: SizedBox()),
              ]
              ,
            ),
          ),
      ),
        bottomNavigationBar: BottomAppBar(
          height: 40.h,
          color: MyColors.white,
          elevation: 0.sp,
          child: const MyTextGroup(
              staticText: "Didn’t received code?",
              dynamicText: "  Resend it",
              page: ''),
        )

    );
  }
}
