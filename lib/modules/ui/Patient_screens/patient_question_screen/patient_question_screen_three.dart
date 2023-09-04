import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_question_widgets.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientQuestionScreenThree extends StatefulWidget {
  const PatientQuestionScreenThree({Key? key}) : super(key: key);

  @override
  State<PatientQuestionScreenThree> createState() => _PatientQuestionScreenThreeState();
}

class _PatientQuestionScreenThreeState extends State<PatientQuestionScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'PatientQuestionScreenTwo',
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
                "Continue",
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
                    "What’s your weight",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),Text(
                    "today?And are you satistfied?",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),Text(
                    "with it or not!!",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(height: 22.h),
              Container(
                height: 95,
                width: 170,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.darkBlue),
                    borderRadius: BorderRadius.circular(10.r)),
                child: TextField(),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: MyColors.darkBlue,
            onPressed: (){
              Navigator.pushNamed(context, "PatientQuestionScreenFour");
            },
            child: const Icon(Icons.arrow_forward)
        )
    );
  }
}


