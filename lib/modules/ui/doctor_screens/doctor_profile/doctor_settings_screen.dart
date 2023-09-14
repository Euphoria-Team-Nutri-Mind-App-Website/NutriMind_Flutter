import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/doctor_profile_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/patient_settings_widgets.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class DoctorSettingScreen extends StatefulWidget {
  const DoctorSettingScreen({Key? key}) : super(key: key);

  @override
  State<DoctorSettingScreen> createState() => _DoctorSettingScreenState();
}

class _DoctorSettingScreenState extends State<DoctorSettingScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..getDoctorProfile(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
  listener: (context, state) {
  },
  builder: (context, state) {
    DoctorProfileModel? cubit =LayoutCubit.get(context).doctorProfileModel;
    return Scaffold(
        appBar: MyAppBar(
          backPage: 'DoctorProfile',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Settings", style: AppTextStyle().textInAppBar)],
          ),
          actionIcon: [
            Padding(
                padding: EdgeInsets.only(right: 10.sp),
                child: Image.asset('assets/images/careLogo.png'))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 20.sp),
            child:
                cubit !=null?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Personal information",
                        style: AppTextStyle()
                            .textInAppBar
                            .copyWith(fontSize: 16.sp)),
                    const Spacer(),
                    Icon(
                      Icons.edit,
                      color: MyColors.grey,
                      size: 18.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                PatientChangeInfo(
                  text: 'Name',
                  hintText: '${cubit?.doctorInformation?[0].name}',
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text("Email",
                        style: AppTextStyle()
                            .textInAppBar
                            .copyWith(fontSize: 16.sp)),
                    const Spacer(),
                    Icon(
                      Icons.edit,
                      color: MyColors.grey,
                      size: 18.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                PatientChangeInfo(
                  text: 'Email',
                  hintText: '${cubit?.doctorInformation?[0].email}',
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text("Password",
                        style: AppTextStyle()
                            .textInAppBar
                            .copyWith(fontSize: 16.sp)),
                    const Spacer(),
                    Icon(
                      Icons.edit,
                      color: MyColors.grey,
                      size: 18.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                const PatientChangeInfo(
                  text: 'Password',
                  hintText: '.......',
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text("Help Center",
                    style: AppTextStyle().textInAppBar.copyWith(
                        fontSize: 16.sp)),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 15.sp, right: 15.sp, top: 13.sp, bottom: 13.sp),
                  decoration: BoxDecoration(
                    color: MyColors.lightGrey,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                          color: MyColors.grey,
                          blurRadius: 7.0,
                          spreadRadius: 1.0,
                          offset: Offset(4, 4)), //BoxShadow
                    ],
                  ),
                  child: Row(
                    children: [
                      Text("FAQ",
                          style:
                          AppTextStyle().greyText.copyWith(fontSize: 16.sp)),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'DoctorHelpAndSupport');
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: MyColors.grey,
                          size: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ):
                    Center(child: CircularProgressIndicator(color: MyColors.darkBlue)),
          ),
        ),
      );
  },
),
    );
  }
}
