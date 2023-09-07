import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_question_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientQuestionScreenTwo extends StatefulWidget {
  const PatientQuestionScreenTwo({Key? key}) : super(key: key);

  @override
  State<PatientQuestionScreenTwo> createState() => _PatientQuestionScreenTwoState();
}

class _PatientQuestionScreenTwoState extends State<PatientQuestionScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'PatientQuestionScreen',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage('assets/images/questionnaire.png'),
                width: 110.w,
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let’s Start...",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              SizedBox(height: 12.h),
              const LinearProgressIndicator(
                color: MyColors.darkBlue,
                backgroundColor: MyColors.grey,
              ),
              SizedBox(height: 12.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Are you on your diet",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),Text(
                    " program?",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(height: 22.h),
              Column(
                children: [
                  const PatientQuestionWidgets(text: "Yes"),
                  SizedBox(height: 11.h),
                  const PatientQuestionWidgets(text: "No"),
                  SizedBox(height: 11.h),
                  const PatientQuestionWidgets(text: "yes,but want changed"),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: MyColors.darkBlue,
            onPressed: (){
              Navigator.pushNamed(context, "PatientQuestionScreenThree");
            },
            child: const Icon(Icons.arrow_forward)
        )
    );
  }
}


