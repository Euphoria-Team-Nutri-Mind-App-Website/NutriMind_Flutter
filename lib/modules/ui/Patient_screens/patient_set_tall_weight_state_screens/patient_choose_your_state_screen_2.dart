import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_choose_state_widget.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientChooseYourStateScreen2 extends StatefulWidget {
  const PatientChooseYourStateScreen2 ({super.key});

  @override
  State<PatientChooseYourStateScreen2> createState() => _PatientChooseYourStateScreen2State();
}

class _PatientChooseYourStateScreen2State extends State<PatientChooseYourStateScreen2> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientChooseYourStateScreen1',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Choose your state',
                style:AppTextStyle().textInAppBar
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDropdownButton<String>(
                items: ['Option 1', 'Option 2', 'Option 3'],
                value: selectedValue,
                hintText: 'Select an option',
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              SizedBox(height: 30.h,),
              Text(
                "Conclusion :",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Your daily caloric needs are 2,306 calories",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: MyColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "About your practice :",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Do moderate intensity exercise 1 to 3 days a week",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: MyColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Personal measurement results :",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "You need 1806 calories/day to lose 0.5 kg each week.\nYou need 1306 calories/day to lose 1 kg each week.\nYou need 2806 calories/day to gain 0.5 kg each week.\nYou need 3306 calories/day to gain 1 kg each week .",
                style: TextStyle(
                  wordSpacing: 1.5.sp,
                    height: 1.5.sp,
                    fontFamily: "Poppins",
                    color: MyColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
              SizedBox(height: 50.h,),
              const MyBlueButton(
                text: 'Finish',
                page: 'PatientNavBarScreen',
              )
            ],
          ),
        ),
      ),
    );
  }
}
