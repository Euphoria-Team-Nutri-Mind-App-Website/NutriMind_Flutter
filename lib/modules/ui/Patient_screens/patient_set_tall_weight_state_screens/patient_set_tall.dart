import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart'as http;
import 'package:nutri_mind_application/shared/Constants/colors.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../../shared/Constants/api_constants.dart';
import '../../../../shared/Constants/constants.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientSetTallScreen extends StatefulWidget {
  const PatientSetTallScreen({Key? key}) : super(key: key);

  @override
  State<PatientSetTallScreen> createState() => _PatientSetTallScreenState();
}

class _PatientSetTallScreenState extends State<PatientSetTallScreen> {
  double height = 130.0;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSignUpScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('How tall are you ?', style: AppTextStyle().textInAppBar.copyWith(fontSize: 21.sp)),
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
                  // TallComponents(height: ,),
                  Column(
                    children: [
                      SfSlider(
                        min: 130.0,
                        max: 220.0,
                        value: height,
                        onChanged: (dynamic value) {
                          setState(() {
                            height = value;
                          });
                        },
                        showTicks: true,
                        showLabels: true,
                        interval: 10,
                        activeColor: MyColors.darkBlue,
                        inactiveColor: MyColors.grey,
                      ),
                      SizedBox(
                        height: 90.h,
                      ),
                      Center(
                        child: Container(
                          width: 90.w,
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: MyColors.darkBlue),
                            boxShadow: const [
                              BoxShadow(
                                color: MyColors.darkBlue,
                                blurRadius: 5.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: MyColors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                                "${height.toInt()} cm",
                                style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontWeight: FontWeight.w700,fontSize:17.sp)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  // MyBlueButton(
                  //   width:double.infinity,
                  //   height: 55.h,
                  //   text: 'Next',
                  //   page: 'PatientSetWeightScreen',
                  // ),
                  InkWell(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      var headers = {
                        'Accept': 'application/json',
                        'Authorization': 'Bearer ${accessToken!}',
                      };
                      var request = http.MultipartRequest('POST',
                          Uri.parse('$BASEURl/patient/api/patient/height'));
                      request.fields.addAll({
                        'height': "${height.toInt()}"
                      });

                      request.headers.addAll(headers);

                      http.StreamedResponse response = await request.send();

                      if (response.statusCode == 200) {
                        print("tall ${height.toInt()}");
                        print(await response.stream.bytesToString());
                        Navigator.pushNamed(context, 'PatientSetWeightScreen');
                      }
                      else {
                        print(response.reasonPhrase);
                      }

                    }
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
