import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientHelpAndSupport extends StatelessWidget {
  const PatientHelpAndSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSettingScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Help&Support", style: AppTextStyle().textInAppBar),
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 5.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Objective",
                  style: AppTextStyle().greyText.copyWith(fontSize: 17.sp)),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.grey,
                      blurRadius: 7.0,
                      spreadRadius: 1.0,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: MyColors.white,
                      blurRadius: 0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      style: AppTextStyle()
                          .greyText
                          .copyWith(color: MyColors.black, fontSize: 13.sp),
                      cursorColor: MyColors.darkBlue,
                      controller: TextEditingController(text: 'the title'),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Email",
                style: AppTextStyle().greyText.copyWith(fontSize: 17.sp),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.grey,
                      blurRadius: 7.0,
                      spreadRadius: 1.0,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: MyColors.white,
                      blurRadius: 0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      style: AppTextStyle()
                          .greyText
                          .copyWith(color: MyColors.black, fontSize: 13.sp),
                      cursorColor: MyColors.darkBlue,
                      controller:
                          TextEditingController(text: 'ahmed20@gmail.com'),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Problem",
                style: AppTextStyle().greyText.copyWith(fontSize: 17.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.grey,
                      blurRadius: 7.0,
                      spreadRadius: 1.0,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: MyColors.white,
                      blurRadius: 0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      maxLines: 6,
                      keyboardType: TextInputType.multiline,
                      cursorColor: MyColors.darkBlue,
                      controller: TextEditingController(
                        text: 'Lorem Ipsum is simply dummy text of the printing'
                            'and typesetting industry. Lorem Ipsum has been'
                            ' the industry\'s standard dummy text ever since the'
                            ' 1500s, when an unknown printe',
                      ),
                      style: AppTextStyle()
                          .greyText
                          .copyWith(color: MyColors.black, fontSize: 13.sp,height: 1.5.sp,wordSpacing: 0.7.sp),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80.h),
              MyBlueButton(
                width: double.infinity,
                height: 55.h,
                text: 'Submit',
                page: 'PatientSettingScreen',
              )
            ],
          ),
        ),
      ),
    );
  }
}
