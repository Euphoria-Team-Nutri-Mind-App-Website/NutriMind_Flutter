import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/models/patient_model.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/doctor_profile_widgets.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..getUserData(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          PatientModel? cubit = LayoutCubit.get(context).patientModel;
          return Scaffold(
            appBar: MyAppBar(
              backPage: 'PatientNavBarScreen',
              pageTitle: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Profile", style: AppTextStyle().textInAppBar)],
              ),
              actionIcon: [
                Padding(
                    padding: EdgeInsets.only(right: 15.sp),
                    child: Image.asset('assets/images/careLogo.png'))
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cubit != null
                        ? Container(
                            padding: EdgeInsets.symmetric(horizontal: 25.sp),
                            height: 140.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              boxShadow: const [
                                BoxShadow(
                                  color: MyColors.darkBlue,
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: MyColors.highLightBlue,
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: MyColors.white,
                                  radius: 35.r,
                                  child: Image.asset("assets/images/user1.png"),
                                  //child: Image.network("${cubit.patientInformation?[0].image}"),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${cubit.patientInformation?[0].name}",
                                      style: AppTextStyle()
                                          .textInAppBar
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/images/email.png'),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        SizedBox(
                                          width: 130.w,
                                          child: Text(
                                              "${cubit.patientInformation?[0].email}",
                                              style: AppTextStyle()
                                                  .greyText
                                                  .copyWith(fontSize: 12.sp)),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                              color: MyColors.darkBlue,
                            ),
                          ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, 'PatientChoosePaymentScreen');
                        },
                        child: ProfileButtons(
                          icon: Icons.calendar_month,
                          text: 'Payment',
                        )),
                    SizedBox(height: 15.h),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'PatientReport');
                        },
                        child: ProfileButtons(
                          icon: Icons.document_scanner_outlined,
                          text: 'Report',
                        )),
                    SizedBox(height: 15.h),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'PatientSettingScreen');
                        },
                        child: ProfileButtons(
                          icon: Icons.settings,
                          text: 'Settings',
                        )),
                    SizedBox(height: 15.h),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'ContinueScreen');
                        },
                        child: ProfileButtons(
                          icon: Icons.logout,
                          text: 'Log out',
                        )),
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
