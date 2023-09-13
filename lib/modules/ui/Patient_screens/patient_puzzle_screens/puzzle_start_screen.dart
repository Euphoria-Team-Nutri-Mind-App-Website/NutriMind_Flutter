import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';

class PuzzleStartScreen extends StatefulWidget {
  const PuzzleStartScreen({Key? key}) : super(key: key);

  @override
  State<PuzzleStartScreen> createState() => _PuzzleStartScreenState();
}

class _PuzzleStartScreenState extends State<PuzzleStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage('assets/images/PuzzleZone.png'),
              width: 110.w,
            )
          ],
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              "   Word\nJourney",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 50.sp,
                  color: MyColors.darkBlue,
                  fontFamily: "Poppins",
                  shadows:const [
                    BoxShadow(
                      color: MyColors.babyBlue,
                      offset: Offset(4, 4),
                    ), //BoxShadow
                  ],
                  height: 1.2.sp
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            MyBlueButton(text: 'Play', page: 'PatientPuzzleFirstScreen',height: 55.h,width: 180.w,),
          ],
        ),
      ),
    );
  }
}