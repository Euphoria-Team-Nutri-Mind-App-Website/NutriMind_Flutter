import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/doctor_widget_for_patient.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientHomeServicesScreen extends StatefulWidget {
  const PatientHomeServicesScreen({Key? key}) : super(key: key);

  @override
  State<PatientHomeServicesScreen> createState() =>
      _PatientHomeServicesScreenState();
}

class _PatientHomeServicesScreenState extends State<PatientHomeServicesScreen> {
  List allServices = [
    {
      "icon": Icons.notes,
      "name": "Notes",
      "rout": "PatientNotesScreen",
    },
    {
      "icon": Icons.email,
      "name": "Motivzone",
      "rout": "PatientMotivzoneScreen",
    },
    {
      "icon": Icons.library_books_outlined,
      "name": "Library",
      "rout": "PatientLibraryScreen",
    },
    {
      "icon": Icons.question_mark,
      "name": "Question",
      "rout": "PatientQuestionFirstScreen",
    },
    {
      "icon": Icons.monitor_weight_outlined,
      "name": "Track Weight",
      "rout": "PatientTrackWeightFirstScreen",
    },
    {
      "icon": Icons.local_fire_department,
      "name": "Track Eating",
      "rout": "PatientMyDairyScreen",
    },
  ];

  //bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSetTallScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.sp),
              child: Image(
                image: const AssetImage('assets/images/logo.png'),
                width: 110.w,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 25.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "All services",
                  style:
                      AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp),
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
                            color: MyColors.lightGrey
                            //click ? MyColors.lightGrey : MyColors.darkBlue,
                            ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, allServices[index]['rout']);
                            // setState(() {
                            //   //click = !click;
                            // });
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
                                    size: 27.sp, color: MyColors.darkBlue
                                    //click ? MyColors.darkBlue: MyColors.lightGrey
                                    ),
                                const SizedBox(height: 8),
                                Text(
                                  "${allServices[index]['name']}",
                                  style: AppTextStyle().textInAppBar.copyWith(
                                      color: MyColors.darkBlue,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500
                                      //click ? MyColors.darkBlue : MyColors.lightGrey
                                      ),
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
                Text("Top doctors",
                    style: AppTextStyle()
                        .textInAppBar
                        .copyWith(fontSize: 16.sp)),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, 'DoctorListForPatientScreen');
                  },
                  child: Text("See all", style: AppTextStyle().greyText),
                )
              ],
            ),
            SizedBox(
              height: 17.sp,
            ),
            const DoctorWidgetForPatientScreen2()
          ],
        ),
      ),
    );
  }
}
