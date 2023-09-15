import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientPuzzleSecondScreen extends StatefulWidget {
  const PatientPuzzleSecondScreen({super.key});

  @override
  PatientPuzzleSecondScreenState createState() =>
      PatientPuzzleSecondScreenState();
}

class PatientPuzzleSecondScreenState extends State<PatientPuzzleSecondScreen> {
  final List<String> words = ['love', 'hope', 'confidence'];
  final List<String> grid = [
    'l',
    'o',
    'v',
    'e',
    'h',
    'y',
    'a',
    'b',
    'c',
    'd',
    'p',
    'f',
    'x',
    's',
    'z',
    'g',
    'i',
    'j',
    'r',
    'w',
    'n',
    'k',
    't',
    'q',
    'u'
  ];
  final Map<String, int> scores = {
    'love': 100,
    'hope': 100,
    'confidence': 100,
  };
  String currentWord = '';
  int totalScore = 0;

  void addToCurrentWord(String letter) {
    setState(() {
      currentWord += letter;
    });
  }

  void deleteLastLetter() {
    if (currentWord.isNotEmpty) {
      setState(() {
        currentWord = currentWord.substring(0, currentWord.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientPuzzleFirstScreen',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Container(
                height: 60.h,
                width: 270.w,
                decoration: BoxDecoration(
                  color: MyColors.darkBlue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Keep going !",
                    style: AppTextStyle().textBlueButton,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Text(
              'Total Score : $totalScore',
              style: AppTextStyle().greyText.copyWith(
                  fontSize: 16.sp,
                  height: 1.sp,
                  wordSpacing: 2.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15.h),
            Text('Current Word : $currentWord',
              style: AppTextStyle().greyText.copyWith(
                fontSize: 16.sp,
                height: 1.sp,
                wordSpacing: 2.sp,
                fontWeight: FontWeight.w600),),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.white,
                      side: const BorderSide(
                        color: MyColors.darkBlue,
                      )),
                  onPressed: () {
                    deleteLastLetter();
                  },
                  child: Text('Delete', style: AppTextStyle().textBlueButton.copyWith(fontSize: 14.sp,color:MyColors.darkBlue),),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.white,
                      side: const BorderSide(
                        color: MyColors.darkBlue,
                      )),
                  onPressed: () {
                    if (words.contains(currentWord)) {
                      final wordScore = scores[currentWord];
                      setState(() {
                        totalScore += wordScore!;
                        if(totalScore == 300){  Navigator.pushNamed(context, 'PuzzleEndScreen');}
                        currentWord = '';
                      });
                    }
                  },
                  child: Text('Submit Word', style: AppTextStyle().textBlueButton.copyWith(fontSize: 14.sp,color:MyColors.darkBlue),),
                ),
              ],
            ),
            SizedBox(height:40.h,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.sp),
                  decoration: BoxDecoration(
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
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(40.r),bottomLeft:Radius.circular(40.r))),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    itemCount: grid.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => addToCurrentWord(grid[index]),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(grid[index],style: AppTextStyle().greyText.copyWith(fontWeight: FontWeight.w700,fontSize:17.sp),),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
