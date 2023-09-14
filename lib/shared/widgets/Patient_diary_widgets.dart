



import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
