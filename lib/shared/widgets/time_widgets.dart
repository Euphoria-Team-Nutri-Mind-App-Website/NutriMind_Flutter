import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/colors.dart';
import '../Constants/text_theme.dart';

class DateWidget extends StatelessWidget {
  final text;
  final text2;
  final icon;
  final list;
  final height;
  final width;
  const DateWidget({
    Key? key,
    required this.text,
    this.text2,
    this.icon,
    required this.list,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            margin: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: MyColors.lightGrey),
              boxShadow: const [
                BoxShadow(
                    color: MyColors.lightGrey,
                    blurRadius: 1.0,
                    spreadRadius: 2.0,
                    offset: Offset(2, 2)), //BoxShadow
                BoxShadow(
                  color: MyColors.white,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${list[index][text]}",
                    style: AppTextStyle().greyText.copyWith(
                        color: MyColors.darkBlue, fontWeight: FontWeight.w700)),
                SizedBox(height: 5.h),
                Text("${list[index][text2]}",
                    style: AppTextStyle().greyText.copyWith(
                        color: MyColors.darkBlue, fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//************************************************************************************************

class TimeWidget extends StatelessWidget {
  final text;
  final icon;
  final list;
  final height;
  final width;
  const TimeWidget({
    Key? key,
    required this.text,
    this.icon,
    required this.list,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            margin: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.r),
              color: MyColors.lightGrey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(list[index]['icon'],
                    color: MyColors.darkBlue, size: 16.sp),
                SizedBox(width: 2.w),
                Text("${list[index]['text']}",
                    style: AppTextStyle()
                        .greyText
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 13.sp))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
