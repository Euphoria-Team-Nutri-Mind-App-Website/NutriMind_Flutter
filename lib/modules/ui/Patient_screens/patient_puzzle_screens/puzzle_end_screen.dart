import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PuzzleEndScreen extends StatefulWidget {
  const PuzzleEndScreen({Key? key}) : super(key: key);

  @override
  State<PuzzleEndScreen> createState() => _PuzzleEndScreenState();
}

class _PuzzleEndScreenState extends State<PuzzleEndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PuzzleStartScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/images/WordJourney.png'),
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
                "Congratulations !",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30.sp,
                    color: MyColors.darkBlue,
                    fontFamily: "Poppins"),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Image.asset('assets/images/win.png'),
            SizedBox(
              height: 60.h,
            ),
            SizedBox(
              width: 160.w,
              child: const MyBlueButton(text: 'Finish', page: 'PuzzleStartScreen'),
            )
          ],
        ),
      ),
    );
  }
}
