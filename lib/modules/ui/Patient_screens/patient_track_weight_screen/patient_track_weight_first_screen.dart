import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientTrackWeightFirstScreen extends StatelessWidget {
  const PatientTrackWeightFirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final weightController = TextEditingController();
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Track your weight', style: AppTextStyle().textInAppBar),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Enter your weight today ..",
                style: AppTextStyle()
                    .textInAppBar
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 16.sp),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFormField(
                cursorColor: MyColors.darkBlue,
                keyboardType: TextInputType.number,
                controller: weightController,
                style: AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyColors.lightGrey),
                      borderRadius: BorderRadius.circular(17.r)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyColors.grey),
                      borderRadius: BorderRadius.circular(17.r)),
                  fillColor: MyColors.lightGrey,
                  filled: true,
                  hintText: 'Enter here',
                  hintStyle: AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Image.asset('assets/images/weight1.png'),
              SizedBox(
                height: 40.h,
              ),
              MyBlueButton(
                text: 'Next',
                page: 'PatientTrackWeightSecondScreen',
                width: double.infinity,
                height: 55.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
