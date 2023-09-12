import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';

class PatientWidgetForDoctorScreen extends StatelessWidget {
  const PatientWidgetForDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'Doctor_PatientInfo');
      },
      child: Container(
        padding: EdgeInsets.all(25.sp),
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
                          style: AppTextStyle().textInAppBar.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text("Bulimic patient", style: AppTextStyle().greyText),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text("Consultation\nFrom 2:00 - 2:30 Pm",
                        style: AppTextStyle().greyText),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                  color: MyColors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
