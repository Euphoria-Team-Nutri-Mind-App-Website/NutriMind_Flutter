import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class DoctorReport extends StatelessWidget {
  const DoctorReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'Doctor_PatientInfo',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("Report", style: AppTextStyle().textInAppBar)],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Name : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("Ahmed Mohamed",
                      style: AppTextStyle()
                          .greyText
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text("Age : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("34",
                      style: AppTextStyle()
                          .greyText
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text("Diagnosis of his state",
                  style: AppTextStyle()
                      .textInAppBar
                      .copyWith(fontSize: 17.sp, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 5.h,
              ),
              Text("Bulimic ( Eating Disorder )",
                  style: AppTextStyle()
                      .greyText
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 15.sp)),
              SizedBox(
                height: 25.h,
              ),
              Text("Description :",
                  style: AppTextStyle()
                      .textInAppBar
                      .copyWith(fontSize: 17.sp, fontWeight: FontWeight.w500)),
              SizedBox(height: 5.h),
              Text(
                  "Being preoccupied with your body shape and weight \nLiving in fear of gaining weight \n Repeated episodes of eating abnormally large amounts\n of food in one sitting\n Feeling a loss of control during bingeing — like you can't\nstop eating or can't control what you eat\nForcing yourself to vomit or exercising too much to kee\nfrom gaining weight after bingeing",
                  style: AppTextStyle().greyText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      height: 1.5.sp,
                      wordSpacing: 1.2.sp)),
              SizedBox(height: 60.h),
              MyBlueButton(
                text: "Save",
                page: 'Doctor_PatientInfo',
                width: double.infinity,
                height: 55.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
