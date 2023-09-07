import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class DoctorHelpAndSupport extends StatelessWidget {
  const DoctorHelpAndSupport ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorSettingScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Help&Support",
                style:AppTextStyle().textInAppBar
            )
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
              Text(
                "Address",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColors.grey),
              ),
              SizedBox(height: 10.sp,),
              Container(
                height: 50.h,
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp),
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
                      style: TextStyle(
                        color: MyColors.grey,
                        wordSpacing:0.5.sp,
                        height: 1.5.sp,

                      ),
                      cursorColor: MyColors.darkBlue,
                      controller:TextEditingController(
                          text:'Egypt'
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.sp,),
              Text(
                "Email",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColors.grey),
              ),
              SizedBox(height: 10.sp,),
              Container(
                height: 50.h,
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp),
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
                      style: TextStyle(
                        color: MyColors.grey,
                        wordSpacing:0.5.sp,
                        height: 1.5.sp,
                      ),
                      cursorColor: MyColors.darkBlue,
                      controller:TextEditingController(
                          text:'john20@gmail.com'
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                "Problem",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColors.grey),
              ),
              SizedBox(height: 10.sp,),
              Container(
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp),
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
                      maxLines:6,
                      keyboardType: TextInputType.multiline,
                      cursorColor: MyColors.darkBlue,
                      controller:TextEditingController(
                        text: 'Lorem Ipsum is simply dummy text of the printing'
                            'and typesetting industry. Lorem Ipsum has been'
                            ' the industry\'s standard dummy text ever since the'
                            ' 1500s, when an unknown printe',
                      ),
                      style: TextStyle(
                        color: MyColors.grey,
                        wordSpacing:0.5.sp,
                        height: 1.5.sp,

                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:80.h),
              const MyBlueButton(text: 'Submit',page: 'DoctorSettingScreen',)
            ],
          ),
        ),
      ),
    );
  }
}
