import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:http/http.dart' as http;
import 'package:nutri_mind_application/shared/Constants/api_constants.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/constants.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class TextDropDown extends StatelessWidget {
  final String title1;
  final String title2;

  const TextDropDown({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title1,
            style: AppTextStyle()
                .greyText
                .copyWith(color: MyColors.darkBlue, fontSize: 15.sp)),
        SizedBox(width: 5.w),
        Text(title2, style: AppTextStyle().greyText.copyWith(fontSize: 10.sp)),
      ],
    );
  }
}

//**************************************************************************************

class PatientChooseYourStateScreen1 extends StatefulWidget {
  const PatientChooseYourStateScreen1({Key? key}) : super(key: key);

  @override
  State<PatientChooseYourStateScreen1> createState() =>
      _PatientChooseYourStateScreen1State();
}

class _PatientChooseYourStateScreen1State
    extends State<PatientChooseYourStateScreen1> {
  final formKey = GlobalKey<FormState>();

  final List<Widget> items = const [
    TextDropDown(title1: 'idle', title2: '( NO or Low practice )'),
    TextDropDown(title1: 'Slack', title2: '( from 1-3 day weekly practice )'),
    TextDropDown(
        title1: 'Active sometimes', title2: '( from 3-5 day weekly practice )'),
    TextDropDown(
        title1: 'Very active', title2: '( from 6-7 day weekly practice )'),
  ];
  Widget selectedValue = Row(
    children: [
      Text('Choose', style: AppTextStyle().greyText.copyWith(fontSize: 16.sp))
    ],
  );

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
              style: AppTextStyle().textInAppBar,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 60.sp),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              DropdownButtonHideUnderline(
                child: DropdownButton2<Widget>(
                  isExpanded: true,
                  hint: selectedValue,
                  items: items
                      .map((Widget item) => DropdownMenuItem<Widget>(
                    value: item,
                    child: Column(
                      children: [
                        item,
                        if (item != items.last) const Divider(),
                      ],
                    ),
                  ))
                      .toList(),
                  onChanged: ( value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    height: 60.h,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 15.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: MyColors.lightGrey,
                    ),
                  ),
                  iconStyleData: IconStyleData(
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 25.sp,
                      color: MyColors.grey,
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: Colors.teal.shade50,
                    ),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: Radius.circular(50.r),
                      thickness: MaterialStateProperty.all<double>(6),
                      thumbVisibility: MaterialStateProperty.all<bool>(true),
                    ),
                  ),
                  // menuItemStyleData: MenuItemStyleData(
                  //   padding: EdgeInsets.all(20.sp)
                  // ),
                ),
              ),
              const Expanded(child: SizedBox()),
              InkWell(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    var headers = {
                      'Accept': 'application/json',
                      'Authorization': 'Bearer ${accessToken!}',
                    };
                    var request = http.MultipartRequest('POST',
                        Uri.parse('$BASEURl/patient/api/patient/active-status'));
                    request.fields.addAll({
                      'active_status': '${selectedValue}'
                    });

                    request.headers.addAll(headers);
                    print("$selectedValue");
                    http.StreamedResponse response = await request.send();
                    if (response.statusCode == 200) {
                      print(await response.stream.bytesToString());
                      Navigator.pushNamed(context, 'PatientChooseYourStateScreen2');

                    }
                    else {
                      print(response.reasonPhrase);
                    }
                    Navigator.pushNamed(context, 'PatientChooseYourStateScreen2');
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
                        Text("Calculate", style: AppTextStyle().textBlueButton),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}