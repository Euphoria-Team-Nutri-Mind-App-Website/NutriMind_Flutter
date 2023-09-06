import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_choose_state_widget.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientChooseYourStateScreen2 extends StatelessWidget {
  const PatientChooseYourStateScreen2 ({super.key});

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
          style: Theme.of(context).textTheme.headline1,
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
            Container(
                  decoration: BoxDecoration(
                      color: MyColors.lightGrey,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: CustDropDown(
                    items: const [
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("idl"),
                      ),
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("Slack"),
                      ),
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("Active sometimes"),
                      ),
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("Very active"),
                      )
                    ],
                    hintText: "Choose",
                    borderRadius: 5.r,
                    onChanged: (val) {
                      print(val);
                    },
                  ),
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
