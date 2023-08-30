import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientReviewScreen extends StatefulWidget {
  const PatientReviewScreen({Key? key}) : super(key: key);

  @override
  State<PatientReviewScreen> createState() => _PatientReviewScreenState();
}

class _PatientReviewScreenState extends State<PatientReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorListForPatientScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Patient Review",
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
                Icons.add,
                color: MyColors.black,
                size: 25.sp,
              ))
        ],
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
