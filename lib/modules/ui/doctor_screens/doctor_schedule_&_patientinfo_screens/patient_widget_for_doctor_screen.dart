import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';

class PatientWidgetForDoctorScreen extends StatelessWidget {
  const PatientWidgetForDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'Doctor_PatientInfo');
      },
      child: Container(
        padding: EdgeInsets.only(
            right: 20.sp, left: 20.sp, top: 25.sp, bottom: 25.sp),
        decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: const [
            BoxShadow(
              color: MyColors.grey,
              blurRadius: 5,
              offset: Offset(3, 3), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/user1.png"),
                SizedBox(
                  width: 20.sp,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ahmed Mohamed",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.sp,
                    ),
                    const Text(
                      "Bulimic patient",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    SizedBox(
                      height: 3.sp,
                    ),
                    const Text(
                      "Consultation\n From 2:00 - 2:30 Pm",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'Doctor_PatientInfo');
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: MyColors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
