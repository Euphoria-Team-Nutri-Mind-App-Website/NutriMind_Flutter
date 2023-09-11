import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_tall_weight_screens_widgets.dart';

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
              'What\'s your weight ?',
                style:AppTextStyle().textInAppBar
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 60.sp),
            color: MyColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please enter your weight !',
                 style: AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 50.sp,
                ),
                const WeightComponents(),
                const Expanded(child: SizedBox()),
                MyBlueButton(
                  width: double.infinity,
                  height: 55.h,
                  text: 'Continue',
                  page: 'PatientChooseYourStateScreen1',
                ),
                SizedBox(height: 70.h,)
              ],
            ),
          ),
        ),
    );
  }
}
