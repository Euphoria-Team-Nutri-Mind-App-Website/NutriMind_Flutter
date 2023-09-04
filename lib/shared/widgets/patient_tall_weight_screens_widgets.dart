import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Constants/colors.dart';

class IntegerExample extends StatefulWidget {
  const IntegerExample({super.key});
  @override
  IntegerExampleState createState() => IntegerExampleState();
}

class IntegerExampleState extends State<IntegerExample> {
  int currentIntValueInKg = 30;
  @override
  Widget build(BuildContext context) {
    double currentDoubleValueInLbs = currentIntValueInKg * 2.20462;
    int currentIntValueInLbs = currentDoubleValueInLbs.toInt();
    return Column(
      children: <Widget>[
        NumberPicker(
          value: currentIntValueInKg,
          minValue: 30,
          maxValue: 300,
          step: 1,
          itemWidth: 80,
          itemHeight: 60,
          haptics: true,
          itemCount: 3,
          textStyle: TextStyle(color: MyColors.grey, fontSize: 20.sp),
          selectedTextStyle: TextStyle(color: MyColors.black, fontSize: 30.sp),
          onChanged: (value) => setState(() => currentIntValueInKg = value),
          decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: MyColors.darkBlue,
                ),
                bottom: BorderSide(color: MyColors.darkBlue)),
          ),
        ),
        SizedBox(height: 60.h),
         Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.sp),
                padding:EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10.r),
                  border: Border.all(
                      color: MyColors.darkBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.darkBlue,
                      blurRadius: 5.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: MyColors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "$currentIntValueInKg Kg",
                    style: TextStyle(
                      fontSize: 12.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'),
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                margin: EdgeInsets.only(right: 20.sp),
                padding:EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10.r),
                  border: Border.all(
                      color: MyColors.darkBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.darkBlue,
                      blurRadius: 5.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: MyColors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "$currentIntValueInLbs LBS",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'),
                  ),
                ),
              ),
            ],
        ),
      ],
    );
  }
}
