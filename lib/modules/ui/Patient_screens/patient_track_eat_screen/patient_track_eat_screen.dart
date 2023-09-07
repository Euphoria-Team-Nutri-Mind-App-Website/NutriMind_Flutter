import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/Patient_diary_widgets.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/time_widgets.dart';
import '../../../../shared/widgets/track_eating_widgets.dart';

class PatientTrackEatingScreen extends StatefulWidget {
  const PatientTrackEatingScreen({Key? key}) : super(key: key);

  @override
  State<PatientTrackEatingScreen> createState() =>
      _PatientTrackEatingScreenState();
}

class _PatientTrackEatingScreenState extends State<PatientTrackEatingScreen> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "My dairy",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            )
          ],
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
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset("assets/images/carrot.png"),
                  Text(
                    "You ‘ve lost 1.5 kg yesterdaykeep going!",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      color: MyColors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    boxShadow: const [
                      BoxShadow(
                        color: MyColors.babyBlue,
                        //blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child:
                  Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Eaten",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                color: MyColors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Remaining",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                color: MyColors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "393kcal",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                color: MyColors.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "1207kcal",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                color: MyColors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        const LinearProgressIndicator(
                          color: MyColors.darkBlue,
                          backgroundColor: MyColors.grey,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircularProgressIndicatorWidget(
                              text: "82\141g",
                              text2: "Carbs",
                            ),
                            CircularProgressIndicatorWidget(
                              text: "40\141g",
                              text2: "Protein",
                            ),
                            CircularProgressIndicatorWidget(
                              text: "10\141g",
                              text2: "Fats",
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                "Today’s Meals",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  color: MyColors.black,
                ),
              ),
              SizedBox(height: 11.h,),
              const DropDownButtonDiary(text: "Breakfast", rout: 'DairyMyFoodScreen',),
              SizedBox(height: 11.h,),
              const DropDownButtonDiary(text: "Lunch Snack", rout: null,),
              SizedBox(height: 11.h,),
              const DropDownButtonDiary(text: "Dinner Snack", rout: null,),
              SizedBox(height: 11.h,),
              Text(
                "Activities",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  color: MyColors.black,
                ),
              ),
              SizedBox(height: 11.h,),
              const DropDownButtonDiary(text: "", rout: null,),
            ],
          ),
        ),
      ),
    );
  }
}

