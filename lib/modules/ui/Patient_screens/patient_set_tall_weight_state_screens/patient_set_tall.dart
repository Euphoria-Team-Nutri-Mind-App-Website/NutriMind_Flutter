import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart'as http;
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/constants.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_tall_weight_screens_widgets.dart';

class PatientSetTallScreen extends StatefulWidget {
  const PatientSetTallScreen({Key? key}) : super(key: key);

  @override
  State<PatientSetTallScreen> createState() => _PatientSetTallScreenState();
}

class _PatientSetTallScreenState extends State<PatientSetTallScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSignUpScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('How tall are you ?', style: AppTextStyle().textInAppBar),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 80.sp),
            color: MyColors.white,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Please enter your tall !',
                      style: AppTextStyle().greyText.copyWith(fontSize: 15.sp)),
                  SizedBox(
                    height: 80.h,
                  ),
                   TallComponents(),
                  const Expanded(child: SizedBox()),
                  // MyBlueButton(
                  //   width:double.infinity,
                  //   height: 55.h,
                  //   text: 'Next',
                  //   page: 'PatientSetWeightScreen',
                  // ),
                  InkWell(
                  onTap: () async {
                    // if (formKey.currentState!.validate()) {
                    //   var headers = {
                    //   'Accept': 'application/json',
                    //   'Authorization': 'Bearer ${accessToken!}',
                    // };
                    // var request = http.MultipartRequest('POST',
                    //     Uri.parse('https://heda.azq1.com/NutriMind/public/patient/api/patient/height'));
                    // request.fields.addAll({
                    //   'height': '170'
                    // });
                    //
                    // request.headers.addAll(headers);
                    //
                    // http.StreamedResponse response = await request.send();
                    //
                    // if (response.statusCode == 200) {
                    //   print(await response.stream.bytesToString());
                    //   Navigator.pushNamed(context, 'PatientSetWeightScreen');
                    // }
                    // else {
                    // print(response.reasonPhrase);
                    // }
                    //
                    // }
                  },
                  child: Container(
                    width:double.infinity,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: MyColors.darkBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Next", style: AppTextStyle().textBlueButton),
                        ],
                      ),
                    ),
                  ),
                ),
                  SizedBox(height:70.h)
                ],
              ),
            ),
          ),
      ),
    );
  }
}
