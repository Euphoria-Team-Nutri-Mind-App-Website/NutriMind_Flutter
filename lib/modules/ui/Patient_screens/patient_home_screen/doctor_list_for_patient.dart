import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/doctor_widget_for_patient.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class DoctorListForPatientScreen extends StatefulWidget {
  const DoctorListForPatientScreen({Key? key}) : super(key: key);

  @override
  State<DoctorListForPatientScreen> createState() =>
      _DoctorListForPatientScreenState();
}

class _DoctorListForPatientScreenState
    extends State<DoctorListForPatientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'PatientNavBarScreen',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doctors",
                  style:AppTextStyle().textInAppBar
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(right: 25.sp, left: 25.sp, top: 20.sp),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "All Doctors",
                    style: AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 5.sp,
              ),
              const DoctorWidgetForPatientScreen(),
            ],
          ),
        ));
  }
}
