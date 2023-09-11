import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';


class PatientChooseYourStateScreen2 extends StatefulWidget {
  const PatientChooseYourStateScreen2 ({super.key});

  @override
  State<PatientChooseYourStateScreen2> createState() => _PatientChooseYourStateScreen2State();
}

class _PatientChooseYourStateScreen2State extends State<PatientChooseYourStateScreen2> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientChooseYourStateScreen1',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Choose your state',
                style:AppTextStyle().textInAppBar
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 60.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: MyColors.lightGrey,
                  ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Active Sometimes', style: AppTextStyle().greyText.copyWith(fontSize: 16.sp)),
                  ],
                ),
                ),
              SizedBox(height: 30.h,),
              Text(
                "Conclusion :",
                style:AppTextStyle().textInAppBar.copyWith(fontSize: 14.sp)
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Your daily caloric needs are 2,306 calories",
                style: AppTextStyle().greyText.copyWith(fontSize: 15.sp)
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "About your practice :",
                  style:AppTextStyle().textInAppBar.copyWith(fontSize: 14.sp)
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Do moderate intensity exercise 1 to 3 days a week",
                style: AppTextStyle().greyText.copyWith(fontSize: 15.sp)
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Personal measurement results :",
                style:AppTextStyle().textInAppBar.copyWith(fontSize: 14.sp),),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "You need 1806 calories/day to lose 0.5 kg each week.\nYou need 1306 calories/day to lose 1 kg each week.\nYou need 2806 calories/day to gain 0.5 kg each week.\nYou need 3306 calories/day to gain 1 kg each week .",
                style: AppTextStyle().greyText.copyWith(height: 1.5.sp,wordSpacing: 1.5.sp,fontSize: 15.sp)
              ),
              SizedBox(height: 50.h,),
              MyBlueButton(
                width: double.infinity,
                height: 55.h,
                text: 'Finish',
                page: 'PatientNavBarScreen',
              )
            ],
          ),
        ),
      ),
    );
  }
}
