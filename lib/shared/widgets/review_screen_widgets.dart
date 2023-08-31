import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class Emoji extends StatelessWidget {
  final double rating;

  const Emoji({required this.rating});

  @override
  Widget build(BuildContext context) {
    late Image emoji;

    if (rating == 5) {
      emoji = Image.asset('assets/images/excellent.png');
    } else if (rating == 4) {
      emoji = Image.asset('assets/images/verygood.png');
    } else if (rating == 3) {
      emoji = Image.asset('assets/images/good.png');
    } else if (rating == 2) {
      emoji = Image.asset('assets/images/nice.png');
    } else if (rating == 1) {
      emoji = Image.asset('assets/images/bad.png');
    } else if ( rating == 0) {
      emoji = Image.asset('assets/images/hi.png');
    }
    return emoji;
  }
}

class Description extends StatelessWidget {
  final double rating;

  const Description({required this.rating});

  @override
  Widget build(BuildContext context) {
    late Text feel;

    if (rating == 5) {
      feel = Text(
        'Excellent',
        style: TextStyle(
          color: MyColors.darkBlue,
          fontFamily: 'RacingSansOne',
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      );
    } else if (rating == 4) {
      feel = Text(
        'Very Good',
        style: TextStyle(
          color: MyColors.darkBlue,
          fontFamily: 'RacingSansOne',
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      );
    } else if (rating == 3) {
      feel = Text(
        'Good',
        style: TextStyle(
          color: MyColors.darkBlue,
          fontFamily: 'RacingSansOne',
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      );
    } else if (rating == 2) {
      feel = Text(
        'Nice',
        style: TextStyle(
          color: MyColors.darkBlue,
          fontFamily: 'RacingSansOne',
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      );
    } else if (rating == 1) {
      feel = Text(
        'Bad',
        style: TextStyle(
          color: MyColors.darkBlue,
          fontFamily: 'RacingSansOne',
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      );
    } else if (rating == 0) {
      feel = Text(
        'Hi!',
        style: TextStyle(
          color: MyColors.darkBlue,
          fontFamily: 'RacingSansOne',
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      );
    }
    return feel;
  }
}
