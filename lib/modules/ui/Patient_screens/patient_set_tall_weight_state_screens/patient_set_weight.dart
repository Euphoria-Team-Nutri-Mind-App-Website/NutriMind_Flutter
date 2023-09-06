import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_tall_weight_screens_widgets.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientSetWeightScreen extends StatelessWidget {
  const PatientSetWeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSetTallScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'How weight are you',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 50.sp),
            color: MyColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please Enter you weight !',
                  style: TextStyle(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 15.sp),
                ),
                SizedBox(
                  height: 60.sp,
                ),
                const IntegerExample(),
                SizedBox(
                  height: 130.sp,
                ),
                const MyBlueButton(
                  text: 'Continue',
                  page: 'PatientChooseYourStateScreen1',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
