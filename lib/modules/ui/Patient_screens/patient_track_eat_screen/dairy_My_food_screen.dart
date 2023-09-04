import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/Patient_diary_widgets.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class DairyMyFoodScreen extends StatelessWidget {
  const DairyMyFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientTrackEatingScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "My Food",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyFoodWidget(text: "Breakfast"),
              const MyFoodWidget(text: "Lunch"),
              const MyFoodWidget(text: "Dinner"),
              Padding(
                padding: EdgeInsets.all(18.sp),
                child: const MyBlueButton(
                  text: 'Done',
                  page: 'BreakfastScreen',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


