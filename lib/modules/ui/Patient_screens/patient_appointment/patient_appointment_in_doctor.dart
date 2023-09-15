import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/doctor_list_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientAppointmentInDoctor extends StatefulWidget {
  const PatientAppointmentInDoctor({Key? key, this.user, required this.index}) : super(key: key);
  final DoctorListModel? user;
  final int index;

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
            Image(image: const AssetImage('assets/images/Appointment.png',),
              width: 120.w,),
            SizedBox(width: 7.w,)
          ],
        ),
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
              SizedBox(height: 25.sp),
              Row(
                children: [
                  Text(
                    "${widget.user?.doctorInfo?.data?[widget.index].name}",
                    style: AppTextStyle().textInAppBar.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "${widget.user?.doctorInfo?.data?[widget.index].rate}",
                        style: AppTextStyle().textInAppBar.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,),
                      ),
                      SizedBox(width: 5.w,),
                      Icon(
                        Icons.star,
                        size: 23.sp,
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
                          style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontSize: 16.sp),
                        ),
                        Text(
                          "5.00\$",
                          style:AppTextStyle().greyText.copyWith(fontSize: 15.sp,fontWeight:FontWeight.w700),

                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Experience",
                      style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontSize: 16.sp),
                    ),
                    Text(
                      "5 years",
                      style:AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Qualifications",
                      style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontSize: 16.sp),
                    ),
                    Text(
                      "${widget.user?.doctorInfo?.data?[widget.index].qualification}",
                      style:AppTextStyle().greyText.copyWith(fontSize: 15.sp,height: 1.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
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
                        style:AppTextStyle().textBlueButton.copyWith(color: MyColors.darkBlue)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              MyBlueButton(
                  height: 55.h,
                  width: double.infinity,
                  text: "Book an appointment",
                  page: 'PatientBookAppointment'),
            ],
          ),
        ),
      ),
    );
  }
}