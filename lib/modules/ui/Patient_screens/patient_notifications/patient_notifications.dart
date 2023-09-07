import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_notifications_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientNotificationsScreen extends StatelessWidget {
  const PatientNotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notifications",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 40.sp),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Clear all",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: MyColors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.sp,
            ),
            Container(
              padding: EdgeInsets.all(20.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        offset: Offset(4, 4)), //BoxShadow
                    BoxShadow(
                      color: MyColors.lightGrey,
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ]),
              child: Column(
                children: [
                  const PatientNotificationsWidget(
                    headTitle: "Reminder for your first meal",
                    subTitle: 'you set it at 10:00Am',
                    time: "15m",
                  ),
                  SizedBox(height: 5.h,),
                  const Divider(color: MyColors.grey,endIndent: 1.2),
                  const PatientNotificationsWidget(
                    headTitle: "Reminder for your first meal",
                    subTitle: 'you set it at 10:00Am',
                    time: "15m",
                  ),
                  SizedBox(height: 5.h,),
                  const Divider(color: MyColors.grey,endIndent: 1.2),
                  const PatientNotificationsWidget(
                    headTitle: "Reminder for your first meal",
                    subTitle: 'you set it at 10:00Am',
                    time: "15m",
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Yesterday",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Clear all",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: MyColors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.sp,
            ),
            Container(
              padding: EdgeInsets.all(20.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        offset: Offset(4, 4)), //BoxShadow
                    BoxShadow(
                      color: MyColors.lightGrey,
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ]),
              child: Column(
                children: [
                  const PatientNotificationsWidget(
                    headTitle: "Reminder for your first meal",
                    subTitle: 'you set it at 10:00Am',
                    time: "15m",
                  ),
                  SizedBox(height: 5.h,),
                  const Divider(color: MyColors.grey,endIndent: 1.2),
                  const PatientNotificationsWidget(
                    headTitle: "Reminder for your first meal",
                    subTitle: 'you set it at 10:00Am',
                    time: "15m",
                  ),
                  SizedBox(height: 5.h,),
                  const Divider(color: MyColors.grey,endIndent: 1.2),
                  const PatientNotificationsWidget(
                    headTitle: "Reminder for your first meal",
                    subTitle: 'you set it at 10:00Am',
                    time: "15m",
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
