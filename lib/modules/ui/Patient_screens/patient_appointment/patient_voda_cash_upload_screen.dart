import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import 'package:nutri_mind_application/shared/widgets/default_items.dart';

class PatientVodaUploadPhoto extends StatelessWidget {
  const PatientVodaUploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : MyAppBar(
        backPage: 'PatientChoosePaymentScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Upload Image",style:AppTextStyle().textInAppBar.copyWith(fontSize: 21.sp))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30.sp),
                decoration: BoxDecoration(
                  color: MyColors.babyBlue,
                  border : Border.all(color:MyColors.black),
                  borderRadius: BorderRadius.circular(20.r)
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/cloud.png'),
                    SizedBox(height: 4.h,),
                    Text("Upload the receipt",style:AppTextStyle().greyText.copyWith(color:MyColors.black)),
                    SizedBox(height: 4.h,),
                    Text("be careful it\'s clear",style:AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                  ],
                ),
              ),
              SizedBox(height: 60.sp,),
              Text("Phone number",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
              SizedBox(height: 20.sp,),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle:AppTextStyle().greyText,
                  hintText: '+20 01211059718',
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.sp, vertical: 20.sp),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyColors.lightGrey),
                      borderRadius: BorderRadius.circular(17.r)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyColors.lightGrey),
                      borderRadius: BorderRadius.circular(17.r)),
                  fillColor: MyColors.lightGrey,
                  filled: true,
                ),
              ),
              SizedBox(height: 230.h,),
              MyBlueButton(text: 'Send Receipt', page: 'PatientChoosePaymentScreen',width: double.infinity,height: 55.h,)
            ],
          ),
        ),
      ),
    );
  }
}
