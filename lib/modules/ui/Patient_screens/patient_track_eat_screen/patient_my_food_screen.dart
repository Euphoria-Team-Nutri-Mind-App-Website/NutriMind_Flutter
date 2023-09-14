import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_track_eating_widgets.dart';

class PatientMyFoodScreen extends StatelessWidget {
  const PatientMyFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientMyDairyScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("My Meals", style: AppTextStyle().textInAppBar)],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyFoodWidget(text: "Breakfast"),
              SizedBox(
                height: 40.h,
              ),
              const MyFoodWidget(text: "Lunch"),
              SizedBox(
                height: 40.h,
              ),
              const MyFoodWidget(text: "Dinner"),
              SizedBox(
                height: 70.h,
              ),
              MyBlueButton(
                width: double.infinity,
                height: 55.h,
                text: 'Done',
                page: 'PatientBreakFastScreen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
