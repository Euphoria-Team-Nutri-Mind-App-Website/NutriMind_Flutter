import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_choose_state_widget.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientChooseYourStateScreen1 extends StatelessWidget {
  const PatientChooseYourStateScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSetWeightScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Choose your state',
                style:AppTextStyle().textInAppBar
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.lightGrey,
                      borderRadius: BorderRadius.circular(12)),
                  child: CustDropDown(
                    items: const [
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("idl"),
                      ),
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("Slack"),
                      ),
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("Active sometimes"),
                      ),
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("Very active"),
                      )
                    ],
                    hintText: "Choose",
                    borderRadius: 5,
                    onChanged: (val) {
                      print(val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 60.h,),
              const MyBlueButton(
                text: 'Calculate',
                page: 'PatientChooseYourStateScreen2',
              )

            ],
          ),
        ),
      ),
    );
  }
}
