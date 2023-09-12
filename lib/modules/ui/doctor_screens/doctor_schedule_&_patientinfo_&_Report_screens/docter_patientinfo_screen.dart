import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class Doctor_PatientInfo extends StatelessWidget {
  const Doctor_PatientInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorScheduleScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Patient Info", style: AppTextStyle().textInAppBar)],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 30.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About",
                  style: AppTextStyle()
                      .textInAppBar
                      .copyWith(fontSize: 19.sp, fontWeight: FontWeight.w700)),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text("Name : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("Ahmed Mohamed",
                      style: AppTextStyle().greyText.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Text("Age : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("34",
                      style: AppTextStyle().greyText.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Text("Gender : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("Male",
                      style: AppTextStyle().greyText.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Text("History",
                  style: AppTextStyle()
                      .textInAppBar
                      .copyWith(fontSize: 19.sp, fontWeight: FontWeight.w700)),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text("Disease : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("Eating Disorder",
                      style: AppTextStyle().greyText.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("Last consultation : ",
                  style: AppTextStyle()
                      .textInAppBar
                      .copyWith(fontSize: 17.sp, fontWeight: FontWeight.w500)),
              SizedBox(height: 2.h),
              Text(
                  "Being preoccupied with your body shape and weight \nLiving in fear of gaining weight \n Repeated episodes of eating abnormally large amounts\n of food in one sitting\n Feeling a loss of control during bingeing — like you can't\nstop eating or can't control what you eat\nForcing yourself to vomit or exercising too much to kee\nfrom gaining weight after bingeing",
                  style: AppTextStyle().greyText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      height: 1.5.sp,
                      wordSpacing: 1.2.sp)),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text("New appointment : ",
                      style: AppTextStyle().textInAppBar.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  Text("from 2:00-2:30 pm",
                      style: AppTextStyle().greyText.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 15.sp)),
                ],
              ),
              SizedBox(height: 30.h),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'DoctorReport');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  width: double.infinity,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: MyColors.lightGrey,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      Text('New Report',
                          style: AppTextStyle().greyText.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 14.sp)),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: MyColors.grey,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
