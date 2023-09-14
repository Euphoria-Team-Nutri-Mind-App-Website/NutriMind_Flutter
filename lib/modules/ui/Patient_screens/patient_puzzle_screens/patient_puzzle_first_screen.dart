import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientPuzzleFirstScreen extends StatelessWidget {
  const PatientPuzzleFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PuzzleStartScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage('assets/images/WordJourney.png'),
              width: 110.w,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.sp, horizontal: 25.sp),
          child: Center(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Text(
                "Hello Guys !",

                style: AppTextStyle().greyText.copyWith(
                    color: MyColors.darkBlue,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'There are some details about this game:',
                style: AppTextStyle().greyText.copyWith(
                    color: MyColors.darkBlue,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "1-there are 3 specific words you should make from these letters.\n\n"
                "2-For each word you will collect , you gain 100 points.\n\n"
                "3-you can click on the same letters for multi times.\n\n"
                "4-Click on delete button to remove the last letter entered.\n\n",
                style: AppTextStyle()
                    .greyText
                    .copyWith(fontSize: 14.sp, height: 1.sp, wordSpacing: 2.sp),
              ),
              SizedBox(height: 10.sp,),
              Row(
                children: [
                  Text(
                    "Hint  :",
                    style: AppTextStyle().greyText.copyWith(
                        color: MyColors.darkBlue,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 7.w),
                  Text(
                    "Think positively ",
                    style: AppTextStyle()
                        .greyText
                        .copyWith(fontSize: 16.sp, height: 1.sp, wordSpacing: 2.sp,fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Image.asset('assets/images/verygood.png',width: 120.w,),
                  SizedBox(height: 10,),
                  MyBlueButton(
                    width: double.infinity,
                    height: 55.h,
                    page:'PatientPuzzleSecondScreen' ,
                    text: 'Continue',
                  )


                ]),
          ),
        ),
      ),
    );
  }
}
