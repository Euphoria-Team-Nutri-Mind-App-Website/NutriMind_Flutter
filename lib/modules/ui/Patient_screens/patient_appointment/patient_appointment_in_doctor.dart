import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientAppointmentInDoctor extends StatefulWidget {
  const PatientAppointmentInDoctor({Key? key}) : super(key: key);

  @override
  State<PatientAppointmentInDoctor> createState() =>
      _PatientAppointmentInDoctorState();
}

class _PatientAppointmentInDoctorState
    extends State<PatientAppointmentInDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorListForPatientScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Patient Info",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: Icon(
                Icons.menu,
                color: MyColors.black,
                size: 25.sp,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 247.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    boxShadow: const [
                      BoxShadow(
                        color: MyColors.darkBlue,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: MyColors.babyBlue,
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Image.asset("assets/images/doctor2.png")),
              SizedBox(height: 8.sp),
              Row(
                children: [
                  Text(
                    "Dr.john smith",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Inter'),
                  ),
                  SizedBox(width: 44.w),
                  //Spacer(),
                  const Row(
                    children: [
                      Icon(
                        Icons.chat,
                        color: MyColors.darkBlue,
                      ),
                      SizedBox(width: 5),
                      Text("4.6"),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(18.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Price: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: 'Inter'),
                        ),
                        const Text(
                          "5.00\$",
                          style: TextStyle(fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Experience",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Inter'),
                    ),
                    const Text(
                      "5 years",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Education",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Inter'),
                    ),
                    const Text(
                      "Education at the University of Northern Iowa. "
                      "He received his PhD in Educational Policy"
                      "Studies from the University of"
                      "Wisconsin-Madison in 1971.",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Available",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Inter'),
                    ),
                    const Text(
                      "From  9:00 am  to  2:00 pm everyday",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'PatientReviewScreen');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColors.darkBlue),
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "Patient review",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: MyColors.darkBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const MyBlueButton(
                        text: "Book an appointment",
                        page: 'PatientBookAppointment'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
