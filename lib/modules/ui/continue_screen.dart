import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/Constants/colors.dart';
import '../../shared/Constants/text_theme.dart';

class ContinueScreen extends StatelessWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Continue As ...",
                        style: AppTextStyle().textInAppBar.copyWith(
                            fontSize: 26.sp, fontWeight: FontWeight.w500)),
                    InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, 'PatientLoginScreen'),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.sp, vertical: 15.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: MyColors.darkBlue,
                        ),
                        child: Column(
                          children: [
                            const Image(
                                image: AssetImage(
                                    "assets/images/patienticon.png")),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "Patient",
                              style: AppTextStyle().textInAppBar.copyWith(
                                  color: MyColors.white,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, 'DoctorLoginScreen'),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.sp, vertical: 15.sp),
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
                            Text(
                              "Doctor",
                              style: AppTextStyle().textInAppBar.copyWith(
                                  color: MyColors.white,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
