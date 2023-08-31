import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/doctor_screens/doctor_schedule_&_patientinfo_&_Report_screens/patient_widget_for_doctor_screen.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class DoctorScheduleScreen extends StatelessWidget {
  const DoctorScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'DoctorLoginScreen',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Schedule",
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: MyColors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.sp),
              )
            ],
          ),
          actionIcon: [
            Padding(
                padding: EdgeInsets.only(right: 25.sp),
                child: InkWell(
                  onTap:(){
                    Navigator.pushNamed(context, 'DoctorProfile');
                  },
                  child: CircleAvatar(
                    radius:13.r,
                    backgroundColor:MyColors.darkBlue,
                    child: Image.asset('assets/images/doctor.png',width:23.w,),
                  ),
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(right: 25.sp, left: 25.sp, top: 25.sp),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "All Patients",
                    style: TextStyle(
                        color: MyColors.grey,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 5.sp,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(top: 18.sp),
                    child: const PatientWidgetForDoctorScreen(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
