import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';

class PuzzleMainScreen extends StatelessWidget {
  const PuzzleMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage('assets/images/WordJourney.png'),
              width: 110.w,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.sp,vertical: 30.sp),
        child: Column(
          children:[
            Center(
              child: Container(
                height:80.h,
                width: 270.w,
                decoration:BoxDecoration(
                  color: MyColors.darkBlue,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),bottomLeft:Radius.circular(20.r),bottomRight:Radius.circular(20.r))
                ),
                child:Center(child: Text("What’s your state now!")),

              ),
            )

          ]

        ),
      ),
    );
  }
}
