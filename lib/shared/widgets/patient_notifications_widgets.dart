import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/colors.dart';

class PatientNotificationsWidget extends StatelessWidget {
  final headTitle;
  final subTitle;
  final time;
  const PatientNotificationsWidget(
      {Key? key, required this.headTitle, required this.subTitle, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
                color: MyColors.darkBlue,
                borderRadius: BorderRadius.circular(10.r)),
            child: Image.asset('assets/images/whitebell.png')),
        SizedBox(
          width:9.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headTitle,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: MyColors.black),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              subTitle,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp,
                  color: MyColors.grey),
            )
          ],
        ),
        const Spacer(),
        Text(
          time,
          style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w600,
              fontSize: 10.sp,
              color: MyColors.grey),
        ),
      ],
    );
  }
}
