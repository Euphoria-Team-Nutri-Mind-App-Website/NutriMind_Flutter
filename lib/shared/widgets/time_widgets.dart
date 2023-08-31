import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class DateWidget extends StatelessWidget {
  final text;
  final text2;
  final icon;
  final list;
  final height;
  final width;
  const DateWidget({
    Key? key,
    required this.text,
    this.text2,
    this.icon,
    required this.list,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: MyColors.lightGrey),
              boxShadow: const [
                BoxShadow(
                  color: MyColors.lightGrey,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: MyColors.white,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${list[index][text]}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: MyColors.darkBlue),
                ),
                const SizedBox(height: 8),
                Text(
                  "${list[index][text2]}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: MyColors.darkBlue),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  final text;
  final icon;
  final list;
  final height;
  final width;
  const TimeWidget({
    Key? key,
    required this.text,
    this.icon,
    required this.list,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: MyColors.lightGrey),
              boxShadow: const [
                BoxShadow(
                  color: MyColors.lightGrey,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: MyColors.lightGrey,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(list[index]['icon'],
                    color: MyColors.babyBlue, size: 16.sp),
                const SizedBox(height: 8),
                Text(
                  "${list[index]['text']}",
                  style: TextStyle(
                      color: MyColors.grey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
