import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/quotes_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientMotivzoneScreen extends StatefulWidget {
  const PatientMotivzoneScreen({Key? key}) : super(key: key);

  @override
  State<PatientMotivzoneScreen> createState() => _PatientMotivzoneScreenState();
}

class _PatientMotivzoneScreenState extends State<PatientMotivzoneScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..Qoutes(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          QoutesModel? cubit = LayoutCubit.get(context).qoutesModel;
          return Scaffold(
            appBar: MyAppBar(
              backPage: 'PatientNavBarScreen',
              pageTitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage('assets/images/moTivZone.png'),
                    width: 110.w,
                  )
                ],
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp),
              child: Container(
                color: MyColors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cubit != null ?
                    Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: MyColors.darkBlue),
                            boxShadow: const [
                              BoxShadow(
                                color: MyColors.darkBlue,
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.sp),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.sp,
                                              vertical: 7.sp),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10.r),
                                              color: MyColors.highLightBlue),
                                          child: Text(
                                            "Motivation",
                                            style: AppTextStyle()
                                                .textBlueButton
                                                .copyWith(fontSize: 12.sp),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    "${cubit?.quotes?[index].qoute}",
                                    style: AppTextStyle().textInAppBar.copyWith(
                                        fontSize: 14.sp,
                                        color: MyColors.darkBlue,
                                        wordSpacing: 2.sp),
                                  ),
                                  SizedBox(height: 30.h),
                                  Text(
                                    "- ${cubit?.quotes?[index].author} -",
                                    style: AppTextStyle().textInAppBar.copyWith(
                                      fontSize: 14.sp,
                                      color: MyColors.darkBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 10,
                      itemWidth: double.infinity,
                      itemHeight: 400.0,
                      layout: SwiperLayout.TINDER,
                    ):
                    CircularProgressIndicator(color: MyColors.darkBlue),
                    SizedBox(height: 45.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.keyboard_double_arrow_left,
                          color: MyColors.grey,
                        ),
                        Text(
                          "Swipe Left & right For next",
                          style: AppTextStyle().textInAppBar.copyWith(
                            fontSize: 14.sp,
                            color: MyColors.darkBlue,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_double_arrow_right,
                          color: MyColors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
