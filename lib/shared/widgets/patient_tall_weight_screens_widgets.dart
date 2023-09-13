import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../Constants/colors.dart';

class TallComponents extends StatefulWidget {
  final int? input;
  const TallComponents({super.key, this.input});

  @override
  State<TallComponents> createState() => _TallComponentsState();
}
class _TallComponentsState extends State<TallComponents> {
  double height = 130.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfSlider(
          min: 130.0,
          max: 220.0,
          value: height,
          onChanged: (dynamic value) {
            setState(() {
              height = value;
            });
          },
          showTicks: true,
          showLabels: true,
          interval: 10,
          activeColor: MyColors.darkBlue,
          inactiveColor: MyColors.grey,
        ),
        SizedBox(
          height: 90.h,
        ),
        Center(
          child: Container(
            width: 90.w,
            padding: EdgeInsets.all(15.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: MyColors.darkBlue),
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
                "${height.toInt()} cm",
                  style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontWeight: FontWeight.w700,fontSize:17.sp)
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//********************************************************************************************

class WeightComponents extends StatefulWidget {
  const WeightComponents({super.key});
  @override
  WeightComponentsState createState() => WeightComponentsState();
}
class WeightComponentsState extends State<WeightComponents> {
  int weight = 30;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NumberPicker(
          value: weight,
          minValue: 30,
          maxValue: 300,
          step: 1,
          itemWidth: 80,
          itemHeight: 60,
          haptics: true,
          itemCount: 3,
          textStyle: TextStyle(color: MyColors.grey, fontSize: 20.sp),
          selectedTextStyle: TextStyle(color: MyColors.black, fontSize: 30.sp),
          onChanged: (value) => setState(() => weight = value),
          decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: MyColors.darkBlue,
                ),
                bottom: BorderSide(color: MyColors.darkBlue)),
          ),
        ),
        SizedBox(height: 60.h),
        Center(
          child: Container(
            width: 90.w,
            padding: EdgeInsets.all(15.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: MyColors.darkBlue),
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
                  "$weight KG",
                  style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontWeight: FontWeight.w700,fontSize:17.sp)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
