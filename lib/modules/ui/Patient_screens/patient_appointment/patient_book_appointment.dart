import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../../shared/widgets/time_widgets.dart';
import '../patient_password_screens/set_password_widget.dart';

class PatientBookAppointment extends StatefulWidget {
  const PatientBookAppointment({Key? key}) : super(key: key);

  @override
  State<PatientBookAppointment> createState() => _PatientBookAppointmentState();
}

class _PatientBookAppointmentState extends State<PatientBookAppointment> {
  List date = [
    {
      "num": '21',
      "day": "SUN",
    },
    {
      "num": '22',
      "day": "MON",
    },
    {
      "num": '23',
      "day": "TUE",
    },
    {
      "num": '24',
      "day": "WED",
    },
    {
      "num": '25',
      "day": "THU",
    },
    {
      "num": '26',
      "day": "FRI",
    },
    {
      "num": '27',
      "day": "SAT",
    },
    {
      "num": '28',
      "day": "SUN",
    },
    {
      "num": '29',
      "day": "MON",
    },
    {
      "num": '30',
      "day": "TUE",
    },
  ];

  List time = [
    {
      "icon": Icons.access_time,
      "text": "12:00Am",
    },
    {
      'icon': Icons.access_time,
      "text": "12:00Am",
    },
    {
      'icon': Icons.access_time,
      "text": "12:00Am",
    },
    {
      'icon': Icons.access_time,
      "text": "12:00Am",
    },
    {
      'icon': Icons.access_time,
      "text": "12:00Am",
    },
    {
      'icon': Icons.access_time,
      "text": "12:00Am",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientAppointmentInDoctor',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Dr.John Smith",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            )
          ],
        ),
      ),
      body: Padding(
        padding:EdgeInsets.all(25.sp),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Aug , 2023",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                  SizedBox(width: 5.w,),
                  const Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
              SizedBox(height: 7.h,),
              DateWidget(
                text: 'num',
                text2: "day",
                list: date,
                height: 120.h,
                width: 54.w,
              ),
              SizedBox(height: 7.h,),
              Row(
                children: [
                  Text(
                    "Available Time",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(height: 7.h,),
              TimeWidget(text: "text", list: time, height: 30.h, width: 98.w),
              TimeWidget(text: "text", list: time, height: 30.h, width: 98.w),
              TimeWidget(text: "text", list: time, height: 30.h, width: 98.w),
              SizedBox(height: 7.h,),
              Text(
                "Patient Details",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
              SizedBox(height: 10.h,),
              Text(
                "Full Name",
                style: TextStyle(
                    color: MyColors.grey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
              SizedBox(height: 6.h),
              const SmallTextField(
                hintText: '',
                obscureText: false,
              ),
              SizedBox(height: 10.h,),
              Text(
                "Age",
                style: TextStyle(
                    color: MyColors.grey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
              SizedBox(height: 6.h),
              const SmallTextField(
                hintText: '',
                obscureText: false,
              ),
              SizedBox(height: 10.h,),
              Text(
                "Payment Method",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                    color: MyColors.lightGrey,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Row(
                  children: [
                    Text(
                      'Choose payment method',
                      style: TextStyle(
                          color: MyColors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins'),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'PatientChoosePaymentScreen');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: MyColors.grey,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              const SetPassword(
                text: "Set an appointment",
                backText: "Home",
                yourText: "Your appointment",
                nextScreen: "PatientNavBarScreen",
                DONE: "Done",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
