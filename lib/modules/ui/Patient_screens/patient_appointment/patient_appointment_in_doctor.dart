import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
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
            Image(image: const AssetImage('assets/images/Appointment.png',),width: 120.w,)
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: InkWell(
                onTap: (){Navigator.pushNamed(context,"PatientSettingScreen");},
                child: Icon(
                  Icons.list,
                  color: MyColors.black,
                  size: 25.sp,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200.h,
                  width: double.infinity,
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
              SizedBox(height: 15.sp),
              Row(
                children: [
                  Text(
                    "Dr.john smith",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        fontFamily: 'Poppins'),
                  ),
                  const Spacer(),
                   Row(
                    children: [
                       Icon(
                        Icons.chat,
                        size: 25.sp,
                        color: MyColors.darkBlue,
                      ),
                      SizedBox(width:30.w),
                       Text("4.6",style:TextStyle(fontWeight:FontWeight.w600,fontFamily: 'Poppins',fontSize: 15.sp),),
                      SizedBox(width: 5.w,),
                       Icon(
                        Icons.star,
                        size: 25.sp,
                        color:MyColors.yellow,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15.sp),
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
                              fontFamily: 'Poppins'),
                        ),
                         Text(
                          "5.00\$",
                          style: TextStyle(fontFamily: "Poppins",color: MyColors.grey,fontWeight: FontWeight.w700,fontSize: 15.sp),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Experience",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                     Text(
                      "5 years",
                      style: TextStyle(fontFamily: "Poppins",color: MyColors.grey,fontWeight: FontWeight.w500,fontSize: 15.sp),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Education",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                     Text(
                      "Education at the University of Northern Iowa. "
                      "He received his PhD in Educational Policy"
                      "Studies from the University of"
                      "Wisconsin-Madison in 1971.",
                      style: TextStyle(fontFamily: "Poppins",color: MyColors.grey,fontWeight: FontWeight.w500,fontSize: 13.sp),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Available",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                     Text(
                      "From  9:00 am  to  2:00 pm everyday",
                      style: TextStyle(fontFamily: "Poppins",color: MyColors.grey,fontWeight: FontWeight.w500,fontSize: 13.sp),
                    ),

                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'PatientReviewScreen');
                },
                child: Container(
                  width: double.infinity,
                  height: 50.h,
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
                        fontSize: 17.sp,
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
      ),
    );
  }
}
