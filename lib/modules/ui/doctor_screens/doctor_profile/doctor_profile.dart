import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/doctor_profile_widgets.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorLoginScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Profile",
                style:AppTextStyle().textInAppBar
            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 10.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.darkBlue,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: MyColors.highLightBlue,
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.white,
                      radius: 40.r,
                      child: Image.asset("assets/images/doctor2.png"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dr.John Smith",
                      style: AppTextStyle()
                          .textInAppBar
                          .copyWith(fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/email.png'),
                            SizedBox(
                              width: 5.w,
                            ),
                            SizedBox(
                              width: 130.w,
                              child: Text(
                                  "john@gmail.com",
                                  style: AppTextStyle()
                                      .greyText
                                      .copyWith(fontSize: 12.sp)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'DoctorScheduleScreen');
                  },
                  child: ProfileButtons(
                    icon: Icons.calendar_month,
                    text: 'My schedule',
                  )),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'DoctorChatScreen');
                  },
                  child: ProfileButtons(
                    icon: Icons.chat_outlined,
                    text: 'My Chats',
                  )),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'DoctorReservationReceiptsScreen');
                  },
                  child: ProfileButtons(
                    icon: Icons.receipt_long_outlined,
                    text: 'Reservation receipts',
                  )),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                  onTap: (){Navigator.pushNamed(context, 'DoctorSettingScreen');},
                  child:ProfileButtons(icon:Icons.settings,text:'Settings',)
              ),
              SizedBox(height: 20.h),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ContinueScreen');
                  },
                  child: ProfileButtons(
                    icon: Icons.logout,
                    text: 'Log out',
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
