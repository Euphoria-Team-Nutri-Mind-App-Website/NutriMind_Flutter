import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientTrackWeightSecondScreen extends StatelessWidget {
  const PatientTrackWeightSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientTrackWeightFirstScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Track your weight', style: AppTextStyle().textInAppBar),
          ],
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "EMy progress in weight ..",
                style: AppTextStyle()
                    .textInAppBar
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 16.sp),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: MyColors.babyBlue
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.sp),
                      child: Row(
                        children: [
                          Text("First weight",style: AppTextStyle().greyText.copyWith(color: MyColors.black)),
                          const Spacer(),
                          Text("67 KG",style: AppTextStyle().greyText),
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5.sp,color: MyColors.grey,),
                    Padding(
                      padding: EdgeInsets.all(20.sp),
                      child: Row(
                        children: [
                          Text("Current weight",style: AppTextStyle().greyText.copyWith(color: MyColors.black)),
                          const Spacer(),
                          Text("67 KG",style: AppTextStyle().greyText),
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5.sp,color: MyColors.grey,),
                    Padding(
                      padding: EdgeInsets.all(20.sp),
                      child: Row(
                        children: [
                          Text("lost weight",style: AppTextStyle().greyText.copyWith(color: MyColors.black)),
                          const Spacer(),
                          Text("65 KG",style: AppTextStyle().greyText),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              MyBlueButton(
                text: 'OK',
                page: 'PatientNavBarScreen',
                width: double.infinity,
                height: 55.h,
              ),
              SizedBox(height: 30.sp,)
            ],
        ),
      ),
    );
  }
}
