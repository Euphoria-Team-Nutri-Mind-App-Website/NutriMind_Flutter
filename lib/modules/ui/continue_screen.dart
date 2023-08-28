import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/Constants/colors.dart';

class ContinueScreen extends StatelessWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Container(
          color: MyColors.white,
        ),
        Center(
          child: Container(
            width: 300.w,
            height: 460.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: MyColors.lightGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(18.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Continue As ...",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                        fontFamily: 'Inter',
                        color: MyColors.black,
                        decoration: TextDecoration.none),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'LoginScreen');
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 30.sp, right: 30.sp, top: 15.sp, bottom: 15.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: MyColors.darkBlue,
                      ),
                      child: Column(
                        children: [
                          const Image(
                              image:
                              AssetImage("assets/images/patienticon.png")),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("Patient",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  fontFamily: 'Inter',
                                  color: MyColors.white)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 30.sp, right: 30.sp, top: 15.sp, bottom: 15.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: MyColors.darkBlue,
                      ),
                      child: Column(
                        children: [
                          const Image(
                              image:
                              AssetImage("assets/images/doctoricon.png")),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text("Doctor",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  fontFamily: 'Inter',
                                  color: MyColors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}