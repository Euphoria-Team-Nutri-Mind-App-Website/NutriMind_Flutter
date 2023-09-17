import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_appointment_widgets/stripe_widget.dart';
import '../../../../shared/widgets/patient_appointment_widgets/vodafone_cash_widget.dart';

class PatientChoosePaymentScreen extends StatefulWidget {
  const PatientChoosePaymentScreen({super.key});

  @override
  _PatientChoosePaymentScreenState createState() =>
      _PatientChoosePaymentScreenState();
}

class _PatientChoosePaymentScreenState
    extends State<PatientChoosePaymentScreen> {
  String selectedPaymentMethod = '';
  bool click = true;

  void selectPaymentMethod(String method) {
    setState(() {
      selectedPaymentMethod = method;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientBookAppointment',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Payment", style: AppTextStyle().textInAppBar),
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
                      radius: 35.r,
                      child: Image.asset('assets/images/doctor2.png'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Dr. John Smith",
                                style: AppTextStyle().textInAppBar.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const Spacer(),
                              Text(
                                "5.00\$",
                                style: AppTextStyle().textInAppBar.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("Psychiatrist and\nnutritionist",
                              style: AppTextStyle()
                                  .greyText
                                  .copyWith(fontSize: 12.sp, height: 1.h)),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "4.6",
                                style: AppTextStyle().textInAppBar.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              SizedBox(width: 2.w),
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: MyColors.yellow,
                              )
                            ],
                          )
                        ],
                      ),
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
                    style:
                        AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          selectPaymentMethod('Stripe');
                          click = true;
                        },
                        child: Container(
                          height: 50.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: click == true
                                ? MyColors.lightGrey
                                : MyColors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: MyColors.darkBlue),
                          ),
                          child: Image.asset("assets/images/vecteezy.png"),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: () {
                          selectPaymentMethod('Vodafone Cash');
                          click = false;
                        },
                        child: Container(
                          height: 50.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: click == false
                                ? MyColors.lightGrey
                                : MyColors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: MyColors.darkBlue),
                          ),
                          child: Image.asset("assets/images/cash.png"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  if (selectedPaymentMethod == 'Stripe')
                    const PatientStripeWidget(),
                  if (selectedPaymentMethod == 'Vodafone Cash')
                    const PatientVodafoneCashWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
