import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';

class DoctorWidgetForPatientScreen extends StatelessWidget {
  const DoctorWidgetForPatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 10.sp,vertical: 20.sp),
      decoration: BoxDecoration(
        color: MyColors.lightGrey,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: const [
          BoxShadow(
            color: MyColors.grey,
            blurRadius: 5,
            offset: Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/doctor.png"),
              SizedBox(
                width: 10.sp,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Dr. John Smith",
                          style: AppTextStyle().textInAppBar.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text("4.5",
                              style: AppTextStyle().textInAppBar.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),),
                            const Icon(
                              Icons.star,
                              color: MyColors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Text(
                      "psychiatrist and\nnutritional",
                      style:AppTextStyle().greyText.copyWith(fontSize: 12.sp,height: 1.h)
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'PatientAppointmentInDoctor');
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 20.sp,
                          right: 25.sp,
                          top: 7.sp,
                          bottom: 7.sp,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          border: Border.all(color: MyColors.darkBlue),
                        ),
                        child: const Text(
                          "Book now",
                          style: TextStyle(color: MyColors.darkBlue),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
