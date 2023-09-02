import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class PatientChangeInfo extends StatelessWidget {
  final text ;
  final hintText ;
  const PatientChangeInfo({Key? key, this.text, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            left: 15.sp, right: 15.sp, top: 20.sp, bottom: 10.sp),
        decoration: BoxDecoration(
            color: MyColors.lightGrey,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: const [
              BoxShadow(
                color: MyColors.grey,
                blurRadius: 7.0,
                spreadRadius: 1.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: MyColors.white,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(0, 0),
              ), //BoxShadow
            ]),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,style:TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,fontFamily: "Poppins",color: MyColors.black),),
            TextFormField(
              cursorColor: MyColors.darkBlue,
              decoration:InputDecoration(
                border: InputBorder.none,
                hintText:hintText
              ),
            )
          ],
        )
    );
  }
}
