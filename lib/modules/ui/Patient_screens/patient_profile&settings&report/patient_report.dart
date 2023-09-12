import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientReport extends StatelessWidget {
  const PatientReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientProfile',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Report", style: AppTextStyle().textInAppBar),
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 30.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Name : ",
                      style: AppTextStyle().greyText.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w600,
                          )),
                  Text("Ahmed Mohamed",
                      style: AppTextStyle().greyText.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text("Age : ",
                      style: AppTextStyle().greyText.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w600,
                          )),
                  Text(
                    "34",
                    style: AppTextStyle()
                        .greyText
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text("Diagnosis of his state",
                  style: AppTextStyle().greyText.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      )),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Bulimic ( Eating Disorder )",
                style: AppTextStyle()
                    .greyText
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 15.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Description :",
                style: AppTextStyle().greyText.copyWith(
                      fontSize: 16.sp,
                      color: MyColors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 5.h),
              Text(
                  "Being preoccupied with your body shape and weight \nLiving in fear of gaining weight \nRepeated episodes of eating abnormally large amounts \nof food in one sitting\nFeeling a loss of control during bingeing — like you can't\nstop eating or can't control what you eat\nForcing yourself to vomit or exercising too much to kee\nfrom gaining weight after bingeing",
                  style: AppTextStyle().greyText.copyWith(
                      fontSize: 13.sp, height: 1.2.sp, wordSpacing: 2.sp)),
              const Expanded(child: SizedBox()),
              MyBlueButton(
                text: "Back",
                page: 'PatientProfile',
                height: 55.h,
                width: double.infinity,
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
    );
  }
}
