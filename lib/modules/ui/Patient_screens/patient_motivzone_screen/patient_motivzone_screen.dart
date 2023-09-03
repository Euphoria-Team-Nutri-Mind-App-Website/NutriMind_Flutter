import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientMotivzoneScreen extends StatefulWidget {
  final text;
  const PatientMotivzoneScreen({Key? key, this.text}) : super(key: key);

  @override
  State<PatientMotivzoneScreen> createState() => _PatientMotivzoneScreenState();
}

class _PatientMotivzoneScreenState extends State<PatientMotivzoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'PatientNavBarScreen',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage('assets/images/moTivZone.png'),
                width: 110.w,
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: MyColors.darkBlue),
                      boxShadow: const [
                        BoxShadow(
                          color: MyColors.darkBlue,
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left:25.sp,right: 25.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left:15.sp,right: 15.sp,top: 7.sp,bottom: 7.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: MyColors.highLightBlue
                                  ),
                                  child:  Text("Motivation",style: TextStyle(
                                    color: MyColors.white,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,fontSize: 12.sp
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text(
                              "“When your healthy self is strong enough to deal with all that comes your way in life,"
                              " your eating disorder self will no longer be useful or necessary.",
                              style: TextStyle(
                                  height: 1.5.sp,
                                  wordSpacing: 7.sp,
                                  color: MyColors.darkBlue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "- Carolyn Costin ",
                              style: TextStyle(
                                color: MyColors.darkBlue,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/heart.png",
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "1.5k",
                                  style: TextStyle(
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                const Icon(
                                  Icons.share,
                                  color: MyColors.darkBlue,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "300",
                                  style: TextStyle(
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
                                  ),
                                ),
                                const Spacer(),
                                 Icon(
                                  Icons.save,
                                  color: MyColors.darkBlue,
                                  size: 25.sp,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
                itemWidth: double.infinity,
                itemHeight: 400.0,
                layout: SwiperLayout.TINDER,
              ),
              SizedBox(height: 45.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.keyboard_double_arrow_left,
                    color: MyColors.grey,
                  ),
                  Text(
                    "Swipe Left & right For next",
                    style: TextStyle(
                      color: MyColors.darkBlue,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_double_arrow_right,
                    color: MyColors.grey,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
