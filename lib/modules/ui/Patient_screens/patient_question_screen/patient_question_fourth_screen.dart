import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_track_eating_widgets.dart';

class PatientQuestionFourthScreen extends StatefulWidget {
  const PatientQuestionFourthScreen({Key? key}) : super(key: key);

  @override
  State<PatientQuestionFourthScreen> createState() => _PatientQuestionFourthScreenState();
}

class _PatientQuestionFourthScreenState extends State<PatientQuestionFourthScreen> {
  String selectedContent = '';
  List<String> items = ['I don\'t think I will do that','Ok,I will try to do that','Thanks,that\'s really good ideas'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientQuestionThirdScreen',
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
        padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 40.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Finish",
                style: AppTextStyle().textInAppBar.copyWith(fontSize: 17.sp)),
            SizedBox(height: 30.h),
            const MyProgressIndicator(
              input: 4,
              target: 4,
            ),
            SizedBox(height: 30.h),
            Text("We are so proud of you and your process. If you feel disappointed, we can suggest some activities to do, like walking with loved ones, riding a bike in the air, or playing any sport you like. If anything happens to you, chat with your doctor. wishing all the best for you, Warrior!",
                style: AppTextStyle().textInAppBar.copyWith(fontSize: 17.sp,wordSpacing: 1.2.sp,height: 1.2.sp)),
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
                            context, "PatientNavBarScreen");
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
                            style: AppTextStyle().textInAppBar.copyWith(color: MyColors.darkBlue,fontSize: 16.sp,)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}