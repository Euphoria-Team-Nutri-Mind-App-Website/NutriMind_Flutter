import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_question_widgets.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientQuestionScreen extends StatefulWidget {
  const PatientQuestionScreen({Key? key}) : super(key: key);

  @override
  State<PatientQuestionScreen> createState() => _PatientQuestionScreenState();
}

class _PatientQuestionScreenState extends State<PatientQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
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
                  "How are you feeling ",
                  style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp),
            ),Text(
                  "today?",
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
                const PatientQuestionWidgets(text: "Not Bad"),
                SizedBox(height: 11.h),
                const PatientQuestionWidgets(text: "Good"),
                SizedBox(height: 11.h),
                const PatientQuestionWidgets(text: "Nice"),
                SizedBox(height: 11.h),
                const PatientQuestionWidgets(text: "Very Good"),
              ],
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: MyColors.darkBlue,
            onPressed: (){
              Navigator.pushNamed(context, "PatientQuestionScreenTwo");
            },
            child: const Icon(Icons.arrow_forward)
        )
    );
  }
}


