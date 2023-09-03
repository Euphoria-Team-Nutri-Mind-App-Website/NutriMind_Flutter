import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class ProfileContainer extends StatelessWidget {
  final text;
  const ProfileContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.sp),
      width: double.infinity,
      height: 43.h,
      decoration: BoxDecoration(
          color: MyColors.lightGrey,
          border: Border.all(color: MyColors.darkBlue),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 13.sp,
                color: MyColors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class ProfileButtons extends StatelessWidget {
  final icon;
  final text;
  ProfileButtons({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.sp,right: 10.sp),
      width: double.infinity,
      height: 43.h,
      decoration: BoxDecoration(
          color: MyColors.lightGrey,
          border: Border.all(color: MyColors.darkBlue),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,color: MyColors.grey,),
          SizedBox(width: 10.w,),
          Text(
            text,
            style: TextStyle(
                fontSize: 13.sp,
                color: MyColors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios_rounded,color: MyColors.grey,)
        ],
      ),
    );
  }
}
