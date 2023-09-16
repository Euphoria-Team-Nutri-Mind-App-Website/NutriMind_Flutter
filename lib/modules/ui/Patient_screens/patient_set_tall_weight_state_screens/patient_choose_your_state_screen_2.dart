import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/recommended_calories_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';


class PatientChooseYourStateScreen2 extends StatefulWidget {
  const PatientChooseYourStateScreen2 ({super.key});

  @override
  State<PatientChooseYourStateScreen2> createState() => _PatientChooseYourStateScreen2State();
}

class _PatientChooseYourStateScreen2State extends State<PatientChooseYourStateScreen2> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..GetRecommendedCalories(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          RecommendedCaloriesModel? cubit = LayoutCubit.get(context).recommendedCaloriesModel;
          return Scaffold(
            appBar: MyAppBar(
              backPage: 'PatientChooseYourStateScreen1',
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
                  child:
                  cubit != null?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 15.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: MyColors.lightGrey,
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Idle', style: AppTextStyle().greyText.copyWith(fontSize: 16.sp)),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Text(
                          "Conclusion :",
                          style:AppTextStyle().textInAppBar.copyWith(fontSize: 14.sp)
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          "Your daily caloric needs are ${cubit?.yourCalories} calories",
                          style: AppTextStyle().greyText.copyWith(fontSize: 13.sp)
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                          "About your practice :",
                          style:AppTextStyle().textInAppBar.copyWith(fontSize: 14.sp)
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          "Do moderate intensity exercise 1 to 3 days a week",
                          style: AppTextStyle().greyText.copyWith(fontSize: 13.sp)
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        "Personal measurement results :",
                        style:AppTextStyle().textInAppBar.copyWith(fontSize: 14.sp),),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          "${cubit?.lose05Kg}",
                          style: AppTextStyle().greyText.copyWith(height: 1.5.sp,wordSpacing: 1.5.sp,fontSize: 13.sp)
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          "${cubit?.lose1Kg}",
                          style: AppTextStyle().greyText.copyWith(height: 1.5.sp,wordSpacing: 1.5.sp,fontSize: 13.sp)
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          "${cubit?.gain05Kg}",
                          style: AppTextStyle().greyText.copyWith(height: 1.5.sp,wordSpacing: 1.5.sp,fontSize: 13.sp)
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          "${cubit?.gain1Kg}",
                          style: AppTextStyle().greyText.copyWith(height: 1.5.sp,wordSpacing: 1.5.sp,fontSize: 13.sp)
                      ),
                      SizedBox(height: 50.h,),
                      MyBlueButton(
                        width: double.infinity,
                        height: 55.h,
                        text: 'Finish',
                        page: 'PatientNavBarScreen',
                      )
                    ],
                  ):
                  Center(
                      child: CircularProgressIndicator(color:MyColors.darkBlue))
              ),
            ),
          );
        },
      ),
    );
  }
}