import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientQuestionScreenFour extends StatefulWidget {
  const PatientQuestionScreenFour({Key? key}) : super(key: key);

  @override
  State<PatientQuestionScreenFour> createState() => _PatientQuestionScreenFourState();
}

class _PatientQuestionScreenFourState extends State<PatientQuestionScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'PatientQuestionScreenThree',
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
                    "Tell me things make you",
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),Text(
                    "bad or eating more today..",
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
                height: 55,
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
              Navigator.pushNamed(context, "PatientQuestionScreenFive");
            },
            child: const Icon(Icons.arrow_forward)
        )
    );
  }
}


