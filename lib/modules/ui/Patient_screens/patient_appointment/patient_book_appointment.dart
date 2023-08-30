import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientBookAppointment extends StatefulWidget {
  const PatientBookAppointment({Key? key}) : super(key: key);

  @override
  State<PatientBookAppointment> createState() => _PatientBookAppointmentState();
}

class _PatientBookAppointmentState extends State<PatientBookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorScheduleScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Dr . John Smith",
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
      body: const Column(
        children: [
          Row(
            children: [Text("Aug, 2023"), Icon(Icons.arrow_downward_rounded)],
          )
        ],
      ),
    );
  }
}
