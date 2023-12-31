import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/doctor_screens/doctor_schedule_&_patientinfo_&_Report_screens/patient_widget_for_doctor_screen.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class DoctorScheduleScreen extends StatelessWidget {
  const DoctorScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'DoctorProfile',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Schedule",
                  style:AppTextStyle().textInAppBar.copyWith(fontSize:21.sp)
              )
            ],
          ),
          actionIcon: [
            Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: Image.asset('assets/images/careLogo.png', width: 23.w),
            ),
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
                    style: AppTextStyle().greyText.copyWith(fontSize: 17.sp,fontWeight: FontWeight.w700)
                  ),
                ],
              ),
              SizedBox(
                height: 2.sp,
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
              ),
            ],
          ),
        ),
    );
  }
}
