import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:http/http.dart'as http;
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_password_screens/patient_create_password_screen.dart';
import '../../../../shared/Constants/api_constants.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/constants.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class PatientVerificationScreen extends StatefulWidget {
  const PatientVerificationScreen({Key? key, required this.email}) : super(key: key);
  final String email;


  @override
  State<PatientVerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<PatientVerificationScreen> {
  final formKey = GlobalKey<FormState>();
  bool _onEditing = true;
  int? code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backPage: 'PatientForgetPassword'),
      body: SafeArea(
          child: Container(
            color: MyColors.white,
            padding: EdgeInsets.all(25.sp),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Verification",
                    style: AppTextStyle().textInAppBar.copyWith(fontSize:24.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Please enter the code sent on your email address!",
                    textAlign: TextAlign.center,
                    style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w500) ,
          ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VerificationCode(
                        itemSize: 60.sp,
                        fullBorder: true,
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: MyColors.black),
                        keyboardType: TextInputType.number,
                        underlineColor: MyColors.darkBlue,
                        length: 4,
                        cursorColor: MyColors.darkBlue,
                        clearAll: Padding(
                          padding: EdgeInsets.all(3.sp),
                          child: Text(
                            'clear all',
                            style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w400,color: MyColors.darkBlue ,
                        ),
                          ),
                        ),
                        onCompleted: (String value) {
                          code=int.parse(value);
                          setState(() {
                          });
                        },
                        onEditing: (bool value) {
                          setState(() {
                            _onEditing = value;
                          });
                          if (!_onEditing) FocusScope.of(context).unfocus();
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: Center(
                      child: _onEditing
                          ? Text(
                        'Please enter full code',
                        style: AppTextStyle().greyText.copyWith(fontSize: 13.sp,fontWeight:FontWeight.w400) ,
                      )
                          : const Text(''),
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                   //MyBlueButton(text: 'Verify', page: 'PatientCreatePasswordScreen',width: double.infinity,height: 55.h,),
                  InkWell(
                    onTap: () async {
                      if (formKey.currentState!.validate() ) {
                        var headers = {
                          'Accept': 'application/json',
                        'Authorization': 'Bearer ${accessToken!}',
                      };
                        var request = http.MultipartRequest('GET',
                            Uri.parse(
                              //https://heda.azq1.com/NutriMind/public/patient/api/patient/verify-otp?email=${widget.email}&verfication_code=${code}
                               // 'http://heda.azq1.com/patient/api/patient/verify-otp?email=${widget.email}&verfication_code=${code}'));
                                '$BASEURl/patient/api/patient/verify-otp?email=${widget.email}&verfication_code=${code}'));

                        request.headers.addAll(headers);

                        http.StreamedResponse response = await request.send();

                        if (response.statusCode == 200) {
                          print(await response.stream.bytesToString());
                          //Navigator.pushNamed(context, 'PatientCreatePasswordScreen');
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=>
                                  PatientCreatePasswordScreen(email: widget.email,)));
                        }
                        else {
                          print(response.reasonPhrase);
                        }
                      }
                      //Navigator.pushNamed(context, 'PatientVerificationScreen');
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
                            Text("Verify",
                                style: AppTextStyle().textBlueButton),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
