import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import '../Constants/text_theme.dart';


class MyProgressIndicator extends StatelessWidget {
  final int input;
  final int target;

  const MyProgressIndicator(
      {super.key, required this.input, required this.target});

  @override
  Widget build(BuildContext context) {
    double progressValue = input / target;
    return LinearProgressIndicator(
      minHeight: 4.h,
      value: progressValue,
      backgroundColor: MyColors.darkBlue.withOpacity(0.3),
      color: MyColors.darkBlue,
    );
  }
}

//***********************************************************************************************

class MyCircularProgressIndicator extends StatelessWidget {
  final int input;
  final int target;
  final String title;

  const MyCircularProgressIndicator({
    Key? key,
    required this.input,
    required this.target,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progressValue = input / target;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            Transform.scale(
              scale: 2.5,
              child: CircularProgressIndicator(
                backgroundColor: MyColors.darkBlue.withOpacity(0.3),
                color: MyColors.darkBlue,
                value: progressValue,
                strokeWidth: 2.5,
              ),
            ),
            Text(
              '$input / $target g ',
              style: AppTextStyle().greyText.copyWith(fontSize:11.sp,fontWeight: FontWeight.w700)
            ),
          ],
        ),
         SizedBox(height: 30.h),
        Text(
          title,
          style: AppTextStyle().greyText.copyWith(color: MyColors.black,fontSize: 13.sp)
        ),
      ],
    );
  }
}

//***********************************************************************************************

class MyFoodWidget extends StatelessWidget {
  final text;
  final controller ;
  const MyFoodWidget({Key? key, required this.text, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text",
          style:AppTextStyle().textInAppBar.copyWith(fontSize: 17.sp)
        ),
        SizedBox(height:15.h),
        Container(
          padding: EdgeInsets.all(20.sp),
            width: double.infinity,
            decoration: BoxDecoration(
                color: MyColors.babyBlue,
                borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
              child:TextFormField(
                controller:controller,
                  style:AppTextStyle().greyText,
                  decoration:  InputDecoration(
                    hintStyle: AppTextStyle().greyText,
                    border: InputBorder.none,
                    hintText: 'Enter your $text'
                  ),
              ),
            ),
          ),
      ],
    );
  }
}
