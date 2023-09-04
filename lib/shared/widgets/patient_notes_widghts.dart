import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColors.lightGrey,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("On sunday,",
                      style: TextStyle(
                          color: MyColors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins'),),
                    //SizedBox(width: 55.w,),
                    const Padding(
                      padding: EdgeInsets.only(left: 33),
                      child: Icon(Icons.more_vert,color: MyColors.black),
                    ),
                  ],
                ),
                Text("appointment,",
                  style: TextStyle(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins'),),
                Text("withdr.Amilia",
                  style: TextStyle(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins'),),
              ],
            ),
          ),
        ],
      ),
      // Icon(Icons.more_vert)

    );
  }
}


class NoteColumn extends StatelessWidget {
  const NoteColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NoteContainer(),
          NoteContainer(),
        ],
      ),
    );
  }
}
