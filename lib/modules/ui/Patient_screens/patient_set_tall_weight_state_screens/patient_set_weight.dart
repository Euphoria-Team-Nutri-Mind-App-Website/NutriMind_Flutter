import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart'as http;
import 'package:numberpicker/numberpicker.dart';
import 'package:nutri_mind_application/shared/Constants/api_constants.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/constants.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_tall_weight_screens_widgets.dart';

class PatientSetWeightScreen extends StatefulWidget {
  const PatientSetWeightScreen({Key? key}) : super(key: key);

  @override
  State<PatientSetWeightScreen> createState() => _PatientSetWeightScreenState();
}

class _PatientSetWeightScreenState extends State<PatientSetWeightScreen> {
  int weight = 30;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSetTallScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                'What\'s your weight ?',
                style:AppTextStyle().textInAppBar
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 60.sp),
          color: MyColors.white,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please enter your weight !',
                  style: AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 50.sp,
                ),
                //const WeightComponents(),
                Column(
                  children: <Widget>[
                    NumberPicker(
                      value: weight,
                      minValue: 30,
                      maxValue: 300,
                      step: 1,
                      itemWidth: 80,
                      itemHeight: 60,
                      haptics: true,
                      itemCount: 3,
                      textStyle: TextStyle(color: MyColors.grey, fontSize: 20.sp),
                      selectedTextStyle: TextStyle(color: MyColors.black, fontSize: 30.sp),
                      onChanged: (value) => setState(() => weight = value),
                      decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                              color: MyColors.darkBlue,
                            ),
                            bottom: BorderSide(color: MyColors.darkBlue)),
                      ),
                    ),
                    SizedBox(height: 60.h),
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
                              "$weight KG",
                              style:AppTextStyle().greyText.copyWith(color: MyColors.black,fontWeight: FontWeight.w700,fontSize:17.sp)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                // MyBlueButton(
                //   width: double.infinity,
                //   height: 55.h,
                //   text: 'Continue',
                //   page: 'PatientChooseYourStateScreen1',
                // ),
                InkWell(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      var headers = {
                        'Accept': 'application/json',
                        'Authorization': 'Bearer ${accessToken!}',
                      };
                      var request = http.MultipartRequest('POST',
                          Uri.parse('$BASEURl/patient/api/patient/weight'));
                      request.fields.addAll({
                        'first_weight': "$weight"
                      });

                      request.headers.addAll(headers);
                      print("weight ${weight}");
                      http.StreamedResponse response = await request.send();

                      if (response.statusCode == 200) {
                        print(await response.stream.bytesToString());
                        Navigator.pushNamed(context, 'PatientChooseYourStateScreen1');
                      }
                      else {
                        print(response.reasonPhrase);
                      }
                    }
                  },
                  child: Container(
                    width: double.infinity,
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
                          Text("Continue", style: AppTextStyle().textBlueButton),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}