import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class DropDownButtonDiary extends StatelessWidget {
final text;
final rout;
const DropDownButtonDiary({Key? key, this.text, required this.rout}) : super(key: key);

@override
Widget build(BuildContext context) {
  return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '');
      },
      child: Container(
          padding: EdgeInsets.all(30.sp),
          decoration: BoxDecoration(
            color: MyColors.lightGrey,
            borderRadius: BorderRadius.circular(20.r),

          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "${text}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins'),
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_fire_department,color: MyColors.darkBlue,),
                            Text(
                              "393\350KCAL",
                              style: TextStyle(
                                  color: MyColors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '${rout}');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: MyColors.grey,
                      ),
                    )
                  ],
                ),
              ]
          )
      )
  );
}
}