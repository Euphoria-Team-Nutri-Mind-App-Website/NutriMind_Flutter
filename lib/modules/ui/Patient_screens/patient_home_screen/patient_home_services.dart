import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import 'doctor_widget_for_patient.dart';

class PatientHomeServicesScreen extends StatefulWidget {
  const PatientHomeServicesScreen({Key? key}) : super(key: key);

  @override
  State<PatientHomeServicesScreen> createState() =>
      _PatientHomeServicesScreenState();
}

class _PatientHomeServicesScreenState extends State<PatientHomeServicesScreen> {
  List allServices = [
    {
      "icon": Icons.chat,
      "name": "Chat",
    },
    {
      "icon": Icons.notes,
      "name": "Notes",
    },
    {
      "icon": Icons.email,
      "name": "Motivzone",
    },
    {
      "icon": Icons.library_books_outlined,
      "name": "Library",
    },
    {
      "icon": Icons.question_mark,
      "name": "Question",
    },
    {
      "icon": Icons.local_fire_department,
      "name": "Track Eating",
    }
  ];
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Material(
          child: Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 25.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SmallTextField(
                  hintText: 'Search for service',
                  suffixIcon: Icon(Icons.search_outlined),
                  obscureText: true,
                  textType: TextInputType.text,
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "All services",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.sp,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120.h,
                        child: ListView.builder(
                          itemCount: allServices.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.all(9.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: click ? MyColors.lightGrey : MyColors.darkBlue,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  click = !click;
                                });
                              },
                              child: Container(
                                height: 150.h,
                                width: 90.w,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(33),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(allServices[index]['icon'],
                                        size: 27.sp,
                                        color: click
                                            ? MyColors.darkBlue
                                            : MyColors.lightGrey),
                                    const SizedBox(height: 8),
                                    Text(
                                      "${allServices[index]['name']}",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: click
                                              ? MyColors.darkBlue
                                              : MyColors.lightGrey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top doctors",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'DoctorListForPatientScreen');
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: MyColors.grey),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.sp,
                ),
                const Column(
                  children: [
                    DoctorWidgetForPatientScreen(),
                    SizedBox(height: 18),
                    DoctorWidgetForPatientScreen(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
