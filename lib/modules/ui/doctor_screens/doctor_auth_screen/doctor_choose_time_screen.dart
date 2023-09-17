import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';

class DoctorChooseTimeScreen extends StatefulWidget {
  const DoctorChooseTimeScreen({Key? key}) : super(key: key);

  @override
  State<DoctorChooseTimeScreen> createState() => _DoctorChooseTimeScreenState();
}

class _DoctorChooseTimeScreenState extends State<DoctorChooseTimeScreen> {
  List multipleSelected = [];
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Saturday",
    },
    {
      "id": 1,
      "value": false,
      "title": "Sunday",
    },
    {
      "id": 2,
      "value": false,
      "title": "Monday",
    },
    {
      "id": 3,
      "value": false,
      "title": "Tuesday",
    },
    {
      "id": 4,
      "value": false,
      "title": "Wednesday",
    },
    {
      "id": 5,
      "value": false,
      "title": "Thursday",
    },
    {
      "id": 6,
      "value": false,
      "title": "Friday",
    },
  ];
  List<String> list = <String>['9:00 am to 2:00pm', '2:00 pm to 6:00 pm '];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorSignUpScreen',
        pageTitle:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Times of work',
              style: AppTextStyle().textInAppBar.copyWith(fontSize: 19.sp),
            )
          ],
        ),
        actionIcon: [
          Padding(
              padding: EdgeInsets.only(right: 8.sp),
              child: Image.asset('assets/images/careLogo.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 50.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: MyColors.darkBlue,
                    size: 25.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Choose day/s work :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: List.generate(
                  checkListItems.length,
                  (index) => CheckboxListTile(
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.r)),
                    checkColor: MyColors.darkBlue,
                    activeColor: MyColors.darkBlue.withOpacity(0.3),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      checkListItems[index]["title"],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    value: checkListItems[index]["value"],
                    onChanged: (value) {
                      setState(() {
                        checkListItems[index]["value"] = value;
                        if (multipleSelected.contains(checkListItems[index])) {
                          multipleSelected.remove(checkListItems[index]);
                        } else {
                          multipleSelected.add(checkListItems[index]);
                        }
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 55.h),
              Text(
                "Choose time work :",
                style: TextStyle(
                    color: MyColors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"),
              ),
              SizedBox(
                height: 10.h,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                elevation: 16,
                style: const TextStyle(color:MyColors.grey),
                underline: Container(
                  height: 2,
                  color: MyColors.grey,
                ),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 60.h,),
               MyBlueButton(
                text: 'Back',
                page: 'DoctorSignUpScreen',
              width: double.infinity,
                height: 55.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
