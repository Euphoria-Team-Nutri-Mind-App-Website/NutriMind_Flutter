import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  final text;
  final text2;
  const CircularProgressIndicatorWidget({Key? key,required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Center(
              child: SizedBox(
                height: 75.75.h,
                width: 66.66.w,
                child: const CircularProgressIndicator(
                  color: MyColors.darkBlue,
                  backgroundColor: MyColors.grey,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 20,
                right: 0,
                top: 30,
                child: Text(
                  "$text",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    color: MyColors.grey,),
                )),
          ],
        ),
        SizedBox(height: 9.h,),
        Text(
          "$text2",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            fontFamily: 'Poppins',
            color: MyColors.black,),
        )
      ],
    );
  }
}




class MyFoodWidget extends StatelessWidget {
  final text;
  const MyFoodWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text",
          style: TextStyle(
              color: MyColors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 16.sp),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.all(18.sp),
          child: Container(
            width: double.infinity,
            height: 94.h,
            decoration: BoxDecoration(
                color: MyColors.babyBlue,
                //border: Border.all(color: MyColors.darkBlue),
                borderRadius: BorderRadius.circular(10.r)),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(18.sp),
                child: TextFormField(
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter your $text',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class NumberContainerDairy extends StatelessWidget {
  final text;
  final color;
  final bacgroundColor;
  const NumberContainerDairy({Key? key, required this.text, required this.color, required this.bacgroundColor}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: bacgroundColor,
          //border: Border.all(color: MyColors.darkBlue),
          borderRadius: BorderRadius.circular(20.r)
      ),
      child: Center(child: Text(
        "$text",
        style: TextStyle(
            color: color,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16.sp),
      )),
    );
  }
}
