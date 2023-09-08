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
  listener: (context, state) {
  },
  builder: (context, state) {

    PatientModel? cubit =LayoutCubit.get(context).patientModel;
    //print(cubit?.name);
    //LayoutCubit.get(context).minus();
    //final cubit =BlocProvider.of<LayoutCubit>(context);
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profile",
                style:AppTextStyle().textInAppBar
            )
          ],
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
              cubit != null ?
              Container(
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
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    //cubit != null ?
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${cubit.name}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/call.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "${cubit.phone}",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: MyColors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/email.png'),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                                "${cubit.email}",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: MyColors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ):
              const Center(child: CircularProgressIndicator(),),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "National Id",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
              SizedBox(height: 6.h),
              const ProfileContainer(text: "7654 7790 54533"),
              SizedBox(height:13.h,),
              Text(
                "Gender",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
              SizedBox(height: 6.h),
              const ProfileContainer(text: "Male"),
              SizedBox(height: 13.h),
              InkWell(
                  onTap: (){Navigator.pushNamed(context,'PatientChoosePaymentScreen');},
                  child:ProfileButtons(icon:Icons.calendar_month,text:'Payment',)
              ),
              SizedBox(height: 13.h),
              InkWell(
                  onTap: (){ Navigator.pushNamed(context, 'PatientReport');},
                  child:ProfileButtons(icon:Icons.document_scanner_outlined,text:'Document',)
              ),
              SizedBox(height: 13.h),
              InkWell(
                  onTap: (){Navigator.pushNamed(context, 'PatientSettingScreen');},
                  child:ProfileButtons(icon:Icons.settings,text:'Settings',)
              ),
              SizedBox(height: 13.h),
              InkWell(
                  onTap: (){ Navigator.pushNamed(context, 'ContinueScreen');},
                  child:ProfileButtons(icon:Icons.logout,text:'Log out',)
              ),
            ],
          ),
        ),
      )
    );
  },
),
);
  }
}
