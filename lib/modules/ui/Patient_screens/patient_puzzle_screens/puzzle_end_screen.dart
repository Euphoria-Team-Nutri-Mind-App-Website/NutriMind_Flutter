import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';

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
        backPage: 'PatientPuzzleSecondScreen',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/win.png',),
              SizedBox(
                height: 50.h,
              ),
              Text(
                  "Congrates \n  you did it !!",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40.sp,
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
                height: 80.h,
              ),
              MyBlueButton(text: 'Finish', page: 'PatientNavBarScreen',height: 55.h,width: 180.w,),
              SizedBox(
                height: 80.h,
              ),
            ],
          ),
      ),
    );
  }
}
