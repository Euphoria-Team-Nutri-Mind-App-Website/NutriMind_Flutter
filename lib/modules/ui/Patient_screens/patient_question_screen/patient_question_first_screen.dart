import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_track_eating_widgets.dart';

class PatientQuestionFirstScreen extends StatefulWidget {
  const PatientQuestionFirstScreen({Key? key}) : super(key: key);

  @override
  State<PatientQuestionFirstScreen> createState() =>
      _PatientQuestionFirstScreenState();
}

class _PatientQuestionFirstScreenState
    extends State<PatientQuestionFirstScreen> {
  String selectedContent = '';
  List<String> items = ['Not Bad', 'Good', 'Nice', 'Very good'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage('assets/images/questionnaire.png'),
              width: 110.w,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let’s Start ...",
                style: AppTextStyle().textInAppBar.copyWith(fontSize: 17.sp)),
            SizedBox(height: 20.h),
            const MyProgressIndicator(
              input: 1,
              target: 4,
            ),
            SizedBox(height: 20.h),
            Text("How are you feeling\ntoday? ",
                style: AppTextStyle().textInAppBar.copyWith(fontSize: 17.sp)),
            SizedBox(height: 35.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(20.sp),
                itemCount: items.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedContent = items[index];
                          Navigator.pushNamed(
                              context, "PatientQuestionTwoScreen");
                        });
                      },
                      child: Container(
                        height: 55,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColors.darkBlue),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Text(
                            items[index],
                            style: TextStyle(
                                color: MyColors.darkBlue,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
