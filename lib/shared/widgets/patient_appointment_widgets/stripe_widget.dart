import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../modules/ui/Patient_screens/patient_password_screens/set_password_widget.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_theme.dart';
import '../screens_widgets.dart';

class PatientStripeWidget extends StatelessWidget {
  const PatientStripeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name",
            style: AppTextStyle().greyText.copyWith(
                fontSize: 14.sp, fontWeight: FontWeight.w600)),
        SizedBox(height: 5.h),
        const SmallTextField(
          prefixIcon: Icon(Icons.person),
          hintText: 'Ahmed Mohamed',
          obscureText: false,
        ),
        SizedBox(height: 20.h),
        Text("Card number",
            style: AppTextStyle().greyText.copyWith(
                fontSize: 14.sp, fontWeight: FontWeight.w600)),
        SizedBox(height: 5.h),
        SmallTextField(
          prefixIcon: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Image.asset(
              "assets/images/vecteezy.png",
              width: 2.w,
            ),
          ),
          hintText: '987 765 345',
          obscureText: false,
        ),
        SizedBox(height: 20.h),
        Row(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CVV",
                    style: AppTextStyle().greyText.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 90.w,
                  child: TextFormField(
                    // controller:
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.sp, vertical: 20.sp),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: MyColors.darkBlue),
                          borderRadius:
                          BorderRadius.circular(17.r)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: MyColors.grey),
                          borderRadius:
                          BorderRadius.circular(17.r)),
                      fillColor: MyColors.lightGrey,
                      filled: true,
                    ),
                  ),
                  // ],
                ),
              ]),
          SizedBox(
            width: 30.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("EX",
                  style: AppTextStyle().greyText.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: 90.w,
                child: TextFormField(
                  // controller:
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.sp, vertical: 20.sp),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: MyColors.darkBlue),
                        borderRadius:
                        BorderRadius.circular(17.r)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: MyColors.grey),
                        borderRadius:
                        BorderRadius.circular(17.r)),
                    fillColor: MyColors.lightGrey,
                    filled: true,
                  ),
                ),
                // ],
              ),
            ],
          ),
        ]),
        SizedBox(height: 30.h),
        const SetPassword(
          text: "Confirm",
          yourText: "Your Booking",
          nextScreen: "PatientBookAppointment",
          DONE: "successfully",
          backText: "set it",
        ),
      ],
    );
  }
}
