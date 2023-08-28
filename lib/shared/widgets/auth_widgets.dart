import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/colors.dart';

class ArrowBack extends StatelessWidget {
  final page;
  const ArrowBack({Key? key, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:MyColors.white,
      elevation: 0.sp,
      leading: Padding(
        padding: EdgeInsets.all(18.sp),
        child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '$page');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: MyColors.black,
              size: 30.sp,
            )),
      ),
    );
  }
}
