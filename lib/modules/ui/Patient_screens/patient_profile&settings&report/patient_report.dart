import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

import '../../../../shared/Constants/colors.dart';

class PatientReport extends StatelessWidget {
  const PatientReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientProfile',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Report",
          style: Theme.of(context).textTheme.headline1,),
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 30.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Name : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Ahmed Mohamed",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Age : ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "34",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: MyColors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Diagnosis of his state",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Bulimic ( Eating Disorder )",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: MyColors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Description :",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(height: 5.h),
              Text(
                "Being preoccupied with your body shape and weight \n Living in fear of gaining weight \n Repeated episodes of eating abnormally large amounts \n of food in one sitting\n Feeling a loss of control during bingeing — like you can't\n stop eating or can't control what you eat\n Forcing yourself to vomit or exercising too much to kee\n from gaining weight after bingeing",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: MyColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp),
              ),
              SizedBox(height: 60.h),
              const MyBlueButton(text: "Back", page: 'PatientProfile'),
            ],
          ),
        ),
      ),
    );
  }
}
