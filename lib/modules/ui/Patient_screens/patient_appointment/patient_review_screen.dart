import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/doctor_review_screen_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientReviewScreen extends StatefulWidget {
  const PatientReviewScreen({Key? key}) : super(key: key);

  @override
  State<PatientReviewScreen> createState() => _PatientReviewScreenState();
}

class _PatientReviewScreenState extends State<PatientReviewScreen> {
  double rating =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientAppointmentInDoctor',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Patient Review",
                style:AppTextStyle().textInAppBar
            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'PatientAppointmentInDoctor');
                },
                child: Icon(
                  Icons.check,
                  color: MyColors.black,
                  size: 25.sp,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25.sp, right: 25.sp, bottom: 60.sp),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Put your Review !",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(height: 25.h),
              Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.darkBlue,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: MyColors.white,
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Emoji(rating: rating),
                     SizedBox(height: 40.h),
                    RatingBar.builder(
                      initialRating: rating,
                      glow: false,
                      minRating: 0,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 30.sp,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (value) {
                        setState(() {
                          rating = value;
                        });
                      },
                    ),
                    SizedBox(height: 20.h),
                    Description(rating: rating)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}