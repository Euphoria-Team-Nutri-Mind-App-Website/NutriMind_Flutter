import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_track_eating_widgets.dart';
import '../../../../shared/widgets/time_widgets.dart';


class PatientMyDairyScreen extends StatefulWidget {
  const PatientMyDairyScreen({Key? key}) : super(key: key);

  @override
  State<PatientMyDairyScreen> createState() => _PatientMyDairyScreenState();
}

class _PatientMyDairyScreenState extends State<PatientMyDairyScreen> {
  List date = [
    {
      "num": '21',
      "day": "SUN",
    },
    {
      "num": '22',
      "day": "MON",
    },
    {
      "num": '23',
      "day": "TUE",
    },
    {
      "num": '24',
      "day": "WED",
    },
    {
      "num": '25',
      "day": "THU",
    },
    {
      "num": '26',
      "day": "FRI",
    },
    {
      "num": '27',
      "day": "SAT",
    },
    {
      "num": '28',
      "day": "SUN",
    },
    {
      "num": '29',
      "day": "MON",
    },
    {
      "num": '30',
      "day": "TUE",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("My dairy", style: AppTextStyle().textInAppBar)],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.sp),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateWidget(
                text: 'num',
                text2: "day",
                list: date,
                height: 120.h,
                width: 54.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/carrot.png"),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "You ‘ve lost 1.5 kg yesterday\n keep going!",
                    style: AppTextStyle().greyText.copyWith(height: 1.2.sp),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
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
                      Row(
                        children: [
                          Text("Eaten",
                              style: AppTextStyle().textInAppBar.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500)),
                          const Spacer(),
                          Text("Remaining",
                              style: AppTextStyle().textInAppBar.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text("393kcal", style: AppTextStyle().greyText),
                          const Spacer(),
                          Text("1207kcal", style: AppTextStyle().greyText),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const MyProgressIndicator(input: 393, target: 1207),
                      SizedBox(
                        height: 50.h,
                      ),
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
                height: 30.h,
              ),
              Text("Today’s Meals",
                  style: AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp)),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'PatientMyFoodScreen');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  width: double.infinity,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: MyColors.lightGrey,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      Text('Your Meals',
                          style: AppTextStyle().greyText.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 14.sp)),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: MyColors.grey,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
