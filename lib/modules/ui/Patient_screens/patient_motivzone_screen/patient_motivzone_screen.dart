import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class MotivzoneScreen extends StatefulWidget {
  final text;
  const MotivzoneScreen({Key? key, this.text}) : super(key: key);

  @override
  State<MotivzoneScreen> createState() => _MotivzoneScreenState();
}

class _MotivzoneScreenState extends State<MotivzoneScreen> {
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
          actionIcon: [
            Padding(
                padding: EdgeInsets.only(right: 25.sp),
                child: const Icon(
                  Icons.menu,
                  color: MyColors.black,
                ))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 424.h,
                  width: 380.w,
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
                      padding: EdgeInsets.all(25.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "“When your healthy self is strong enough to deal with all that comes your way in life,"
                            " your eating disorder self will no longer be useful or necessary.",
                            style: TextStyle(
                                color: MyColors.darkBlue,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(height: 88.h),
                          Text(
                            "- Carolyn Costin ",
                            style: TextStyle(
                              color: MyColors.darkBlue,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(height: 44.h),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/heart.png",
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
                              SizedBox(width: 13.w),
                              const Icon(
                                Icons.share,
                                color: MyColors.darkBlue,
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
                              SizedBox(width: 33.w),
                              const Icon(
                                Icons.save,
                                color: MyColors.darkBlue,
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
              itemWidth: 300.0,
              itemHeight: 400.0,
              layout: SwiperLayout.TINDER,
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.grey,
                ),
                Text(
                  "Swipe Left & right For next",
                  style: TextStyle(
                    color: MyColors.darkBlue,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: MyColors.grey,
                ),
              ],
            )
          ],
        ));
  }
}
