import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

class Doctor_PatientInfo extends StatelessWidget {
  const Doctor_PatientInfo({Key? key}) : super(key: key);

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
                child: Image.asset("assets/images/doctor.png"))
          ],
        ),
        body: ConditionalBuilder(
          condition: true,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(15.sp),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "About : ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text("Ahmed "),
                    ],
                  ),
                ],
              ),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 1.h),
          ),
          fallback: (context) => const Center(child: CircularProgressIndicator()),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0.sp,
          child: Padding(
            padding: EdgeInsets.all(25.sp),
            child:
                const MyBlueButton(text: "Back", page: 'DoctorScheduleScreen'),
          ),
        ));
  }
}
