import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientTrackWeightFirstScreen extends StatefulWidget {
  const PatientTrackWeightFirstScreen({super.key});

  @override
  State<PatientTrackWeightFirstScreen> createState() =>
      _PatientTrackWeightFirstScreenState();
}

class _PatientTrackWeightFirstScreenState
    extends State<PatientTrackWeightFirstScreen> {
  final currentWeightController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(listener: (context, state) {
        if (state is EnterCurrentWeightSuccessState) {
          Navigator.pushNamed(context, 'PatientTrackWeightSecondScreen');
        } else if (state is EnterCurrentWeightWithFailureState) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(
                state.message,
                style: AppTextStyle().greyText.copyWith(color: MyColors.white),
              ),
              backgroundColor: MyColors.darkBlue,
            ),
          );
        }
      }, builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            backPage: 'PatientNavBarScreen',
            pageTitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Track your weight', style: AppTextStyle().textInAppBar),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 40.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Enter your weight today ..",
                    style: AppTextStyle()
                        .textInAppBar
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextFormField(
                    cursorColor: MyColors.darkBlue,
                    keyboardType: TextInputType.number,
                    controller: currentWeightController,
                    style: AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.sp, vertical: 20.sp),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: MyColors.lightGrey),
                          borderRadius: BorderRadius.circular(17.r)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: MyColors.grey),
                          borderRadius: BorderRadius.circular(17.r)),
                      fillColor: MyColors.lightGrey,
                      filled: true,
                      hintText: 'Enter here',
                      hintStyle:
                          AppTextStyle().greyText.copyWith(fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Image.asset('assets/images/weight1.png'),
                  SizedBox(
                    height: 40.h,
                  ),
                  InkWell(
                    onTap: () async {
                      // if (formKey.currentState!.validate()) {
                      //   BlocProvider.of<LayoutCubit>(context).enterCurrentWeight(
                      //       current_weight: currentWeightController.text
                      //   );
                      // }
                      Navigator.pushNamed(context, 'PatientTrackWeightSecondScreen');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: MyColors.darkBlue,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text("Next",
                            style: AppTextStyle().textBlueButton),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
