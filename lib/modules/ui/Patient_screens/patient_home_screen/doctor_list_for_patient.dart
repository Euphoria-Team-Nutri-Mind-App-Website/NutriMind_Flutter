import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/main.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import 'doctor_widget_for_patient.dart';

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
                style: Theme.of(context).textTheme.headline1,
              )
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
        body: Padding(
          padding: EdgeInsets.only(right: 25.sp, left: 25.sp, top: 20.sp),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SmallTextField(
                hintText: 'Search for doctor',
                suffixIcon: Icon(Icons.search_outlined),
                obscureText: true,
                textType: TextInputType.text,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "All Doctors",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp),
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
                    child: const DoctorWidgetForPatientScreen(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
