import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
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
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0.sp,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'PatientNavBarScreen');
            },
            icon: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.black,
                  size: 25.sp,
                ),
              ],
            )),
        title: const Text("Doctors"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(11.sp),
            child: const Icon(Icons.menu, color: MyColors.black),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(18.sp),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: MyColors.darkBlue),
                    borderRadius: BorderRadius.circular(10.r)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: MyColors.grey),
                    borderRadius: BorderRadius.circular(10.r)),
                fillColor: MyColors.lightGrey,
                filled: true,
                hintStyle: const TextStyle(color: MyColors.grey),
                hintText: "search for doctor",
                suffixIcon: const Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: MyColors.darkBlue),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "All Doctors",
                  style: TextStyle(
                      fontFamily: 'Inter', fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.all(18.0),
                child: DoctorWidgetForPatientScreen(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
