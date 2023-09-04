import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class PatientQuestionWidgets extends StatelessWidget {
  final text;
  const PatientQuestionWidgets({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 55,
        width: 170,
        decoration: BoxDecoration(
            border: Border.all(color: MyColors.darkBlue),
            borderRadius: BorderRadius.circular(10.r)),
        child: Center(
            child: Text(
              "${text}",
              style: TextStyle(
                  color: MyColors.darkBlue,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            )),
      ),
    );
  }
}