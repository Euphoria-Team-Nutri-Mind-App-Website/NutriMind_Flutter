import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_question_widgets.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientQuestionScreenFive extends StatefulWidget {
  const PatientQuestionScreenFive({Key? key}) : super(key: key);

  @override
  State<PatientQuestionScreenFive> createState() => _PatientQuestionScreenFiveState();
}

class _PatientQuestionScreenFiveState extends State<PatientQuestionScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'PatientQuestionScreenFour',
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
                    '''if you feel at any time before the next
appointment,i suggest you to make
any activity you love like walk with 
loved people ,ride a bike in air,play 
any sport as you like. if any thing 
happen to you , chat with me!''',
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
                child: const PatientQuestionWidgets(text: "Ok"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: MyColors.darkBlue,
            onPressed: (){
              Navigator.pushNamed(context, "PatientNavBarScreen");
            },
            child: const Icon(Icons.check)
        )
    );
  }
}


