import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/images/PuzzleZone.png'),
              width: 110.w,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: Text(
                "   Word\nJourney",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 50.sp,
                    color: MyColors.darkBlue,
                    fontFamily: "Poppins"),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              width: 160.w,
              child: const MyBlueButton(text: 'Play', page: 'PuzzleEndScreen'),
            )
          ],
        ),
      ),
    );
  }
}
