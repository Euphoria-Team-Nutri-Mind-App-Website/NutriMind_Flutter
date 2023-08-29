import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

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
        backPage: 'PatientLoginScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'How tall are you',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 40.sp),
            color: MyColors.white,
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(
                  'Please Enter you tall !',
                  style: TextStyle(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 15.sp),
                ),
                const MyBlueButton(text: 'Next',page: 'PatientSetWeightScreen',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
