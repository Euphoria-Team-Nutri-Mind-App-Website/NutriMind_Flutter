import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_track_eat_screen/patient_list_suggested_meals.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/Patient_diary_widgets.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_track_eating_widgets.dart';

class PatientBreakFastScreen extends StatelessWidget {
  const PatientBreakFastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientMyFoodScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Breakfast",
              style: AppTextStyle().textInAppBar,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.sp),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.sp),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.sp),
                  color: MyColors.babyBlue),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                          color: MyColors.darkBlue,
                          borderRadius: BorderRadius.circular(13.r)),
                      child: Text(
                        "393 kcal",
                        style: AppTextStyle()
                            .greyText
                            .copyWith(color: MyColors.black, fontSize: 15.sp),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Thu 6\t\t\t2 Meals\t\t\t43 kcal remain",style:AppTextStyle().greyText,),
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        const MyCircularProgressIndicator(
                            input: 81, target: 141, title: 'Carbs'),
                        const Spacer(),
                        const MyCircularProgressIndicator(
                            input: 81, target: 141, title: 'Protein'),
                        const Spacer(),
                        const MyCircularProgressIndicator(
                            input: 81, target: 141, title: 'Fats'),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 18.sp),
              decoration: BoxDecoration(
                color: MyColors.lightGrey,
                borderRadius: BorderRadius.circular(15.r)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Recommended Meals",style:AppTextStyle().textBlueButton.copyWith(color: MyColors.darkBlue,fontSize: 15.sp),)],
              ),
            ),
            SizedBox(height: 10.h,),
            const PatientListMeals(),
      ],
      ),
      ),
    );
  }
}
