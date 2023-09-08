import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_tall_weight_screens_widgets.dart';

class PatientSetTallScreen extends StatefulWidget {
  const PatientSetTallScreen({Key? key}) : super(key: key);

  @override
  State<PatientSetTallScreen> createState() => _PatientSetTallScreenState();
}

class _PatientSetTallScreenState extends State<PatientSetTallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSignUpScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('How tall are you ?', style: AppTextStyle().textInAppBar),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 80.sp),
            color: MyColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Please enter your height !',
                    style: AppTextStyle().greyText.copyWith(fontSize: 15.sp)),
                SizedBox(
                  height: 60.h,
                ),
                const TallComponents(),
                SizedBox(
                  height: 70.h,
                ),
                MyBlueButton(
                  width:double.infinity,
                  height: 55.h,
                  text: 'Next',
                  page: 'PatientSetWeightScreen',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
