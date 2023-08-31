import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../patient_password_screens/set_password_widget.dart';

class ChoosePaymentScreen extends StatefulWidget {
  const ChoosePaymentScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePaymentScreen> createState() => _ChoosePaymentScreenState();
}

class _ChoosePaymentScreenState extends State<ChoosePaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientAppointmentInDoctor',
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
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: MyColors.lightGrey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: CircleAvatar(
                        backgroundColor: MyColors.white,
                        radius: 40.r,
                        child: Image.asset('assets/images/doctor2.png'),
                      ),
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
                                  fontSize: 16.sp,
                                  fontFamily: 'Inter'),
                            ),
                            SizedBox(width: 27.w),
                            Text(
                              "5.00\$",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  fontFamily: 'Inter'),
                            ),
                          ],
                        ),
                        Text(
                          "Psychiatrist and",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          "nutritionist",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins'),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/masterCard.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/paypal2.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                          color: MyColors.lightGrey,
                          borderRadius: BorderRadius.circular(16),
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
                SizedBox(height: 6.h),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/vecteezy.png",
                    ),
                  ),
                  hintText: '987 765 345',
                  obscureText: false,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("CVV"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 48.h,
                              width: 78.w,
                              decoration: BoxDecoration(
                                color: MyColors.lightGrey,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: MyColors.lightGrey),
                              ),
                              child: Center(child: Text("5467"))),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("EX"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 48.h,
                                width: 78.w,
                                decoration: BoxDecoration(
                                  color: MyColors.lightGrey,
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: MyColors.lightGrey),
                                ),
                                child: Center(child: Text("30'\'5"))),
                          )
                        ],
                      ),
                    )
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
    );
  }
}
