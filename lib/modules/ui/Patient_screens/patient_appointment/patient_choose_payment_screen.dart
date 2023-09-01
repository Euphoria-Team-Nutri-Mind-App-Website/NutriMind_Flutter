import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../patient_password_screens/set_password_widget.dart';

class PatientChoosePaymentScreen extends StatefulWidget {
  const PatientChoosePaymentScreen({Key? key}) : super(key: key);

  @override
  State<PatientChoosePaymentScreen> createState() =>
      _PatientChoosePaymentScreenState();
}

class _PatientChoosePaymentScreenState
    extends State<PatientChoosePaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientBookAppointment',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Payment",
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: MyColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: MyColors.lightGrey),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: MyColors.highLightBlue,
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.white,
                      radius: 30.r,
                      child: Image.asset('assets/images/doctor2.png'),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Dr. John Smith",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  fontFamily: 'Inter'),
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            Text(
                              "5.00\$",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  fontFamily: 'Inter'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Psychiatrist and",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "nutritionist",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "4.6",
                              style: TextStyle(
                                  color: MyColors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins'),
                            ),
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: MyColors.yellow,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Inter'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Image.asset("assets/images/masterCard.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Image.asset("assets/images/paypal2.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Container(
                          height: 50.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                            color: MyColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: MyColors.lightGrey),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 20.sp,
                            color: MyColors.darkBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        color: MyColors.grey,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                  SizedBox(height: 6.h),
                  const SmallTextField(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Ahmed Mohamed',
                    obscureText: false,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Card number",
                    style: TextStyle(
                        color: MyColors.grey,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                  SizedBox(height: 6.h),
                  SmallTextField(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Image.asset(
                        "assets/images/vecteezy.png",
                      ),
                    ),
                    hintText: '987 765 345',
                    obscureText: false,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("CVV"),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                              height: 48.h,
                              width: 78.w,
                              decoration: BoxDecoration(
                                color: MyColors.lightGrey,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: MyColors.darkBlue),
                              ),
                              child: const Center(child: Text("5467"))),
                        ],
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("EX"),
                          Container(
                              height: 48.h,
                              width: 78.w,
                              decoration: BoxDecoration(
                                color: MyColors.lightGrey,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: MyColors.darkBlue),
                              ),
                              child: const Center(child: Text("30'\'5"))),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  const SetPassword(
                    text: "Confirm",
                    yourText: "Your Booking",
                    nextScreen: "PatientBookAppointment",
                    DONE: "successfully",
                    backText: "Home",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
