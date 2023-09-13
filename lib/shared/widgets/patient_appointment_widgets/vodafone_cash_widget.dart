import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_theme.dart';

class PatientVodafoneCashWidget extends StatelessWidget {
  const PatientVodafoneCashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment steps",
          style: AppTextStyle()
              .textInAppBar
              .copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 15.h),
        Text("1-Transfer the amount to this number :",
            style: AppTextStyle().greyText.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 15.h),
        SizedBox(
          width: 200.w,
          child: TextFormField(
            // controller: ,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 15.sp, vertical: 20.sp),
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
        ),
        SizedBox(height: 30.h),
        Text("2-Upload the receipt image to confirm your payment :",
            style: AppTextStyle().greyText.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 15.h),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'PatientVodaUploadPhoto');
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
                Text('upload the receipt',
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
    );
  }
}
