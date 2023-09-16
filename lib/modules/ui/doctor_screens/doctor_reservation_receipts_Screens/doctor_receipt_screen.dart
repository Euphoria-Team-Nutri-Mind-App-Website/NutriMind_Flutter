import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import 'package:nutri_mind_application/shared/widgets/default_items.dart';

class DoctorReceiptScreen extends StatelessWidget {
  const DoctorReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorReservationReceiptsScreen',
        pageTitle: Row(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text("The Receipt",style: AppTextStyle().textInAppBar.copyWith(fontSize: 21.sp),)
          ],
        ),

      ),
      body: SingleChildScrollView(
        child:Padding(
          padding:EdgeInsets.symmetric(vertical: 70.sp,horizontal: 30.sp),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/receipt.png'),
              SizedBox(height: 50.sp,),
              MyBlueButton(text: 'Ok',
                  page: 'DoctorReservationReceiptsScreen',
              width: double.infinity,
              height: 55.h,
              )
            ],
          )
        )
      ),
    );
  }
}
