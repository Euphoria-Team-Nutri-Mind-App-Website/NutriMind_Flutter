import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/Patient_diary_widgets.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class BreakfastScreen extends StatelessWidget {
  const BreakfastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DairyMyFoodScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Breakfast",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.sp),
        child: Column(
          children: [
            const SmallTextField(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search_outlined),
              obscureText: true,
              textType: TextInputType.text,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.babyBlue,
                      //blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                      padding: EdgeInsets.all(18.sp),
                      child: const NumberContainerDairy(text: "393 kcal", color: MyColors.black, bacgroundColor: MyColors.darkBlue,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Thu 6",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),),Text("Thu 6",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),),Text("Thu 6",
                          style: TextStyle(
                              color: MyColors.grey,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),),
                      ],
                    ),
                     Column(
                      children: [
                         Padding(
                           padding: EdgeInsets.only(right: 18.sp,left: 18.sp),
                           child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircularProgressIndicatorWidget(
                                text: "82141g",
                                text2: "Carbs",
                              ),
                              CircularProgressIndicatorWidget(
                                text: "40141g",
                                text2: "Protein",
                              ),
                              CircularProgressIndicatorWidget(
                                text: "10141g",
                                text2: "Fats",
                              ),
                            ],
                        ),
                         ),
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(
              height: 10.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberContainerDairy(text: "Suggested", color: MyColors.darkBlue,bacgroundColor: MyColors.lightGrey,),
                NumberContainerDairy(text: "Saved", color: MyColors.darkBlue,bacgroundColor: MyColors.lightGrey,),
                NumberContainerDairy(text: "Selected", color: MyColors.darkBlue,bacgroundColor: MyColors.lightGrey,),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/food.png"),
                Column(
                  children: [
                    Text(
                      "Greek Omlet withf "
                          "eta and mint",
                      style: TextStyle(
                          height: 0.5.sp,
                          wordSpacing: 3.sp,
                          color: MyColors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                Icon(Icons.add,color: MyColors.black,)
              ],
            ),
            const Expanded(
                child: Divider(
                  thickness: 1,
                  color: MyColors.grey,
                )),
            SizedBox(
              height: 10.h,
            ),
            const InkWell(
              child: MyBlueButton(
                text: "Add manually",
                page: '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


