import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../models/doctor_list_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../modules/blocs/layout_cubit/layout_cubit.dart';
import '../../modules/ui/Patient_screens/patient_appointment/patient_appointment_in_doctor.dart';

class DoctorWidgetForPatientScreen extends StatelessWidget {
  const DoctorWidgetForPatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..getDoctorsList(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          DoctorListModel? cubit =LayoutCubit.get(context).doctorListModel;

          return Expanded(
            child: state is GetDoctorListLoadingState?
            const Center(
              child: CircularProgressIndicator(color: MyColors.darkBlue,),
            ):
            ListView.builder(
              itemCount: cubit?.doctorInfo?.data?.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: 18.sp),
                child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.sp,vertical: 20.sp),
                  decoration: BoxDecoration(
                    color: MyColors.lightGrey,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: const [
                      BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 5,
                        offset: Offset(1, 1), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/doctor.png"),
                          // Image.network("${cubit?.doctorInfo?.data?[index].image}"),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                   Text(
                                        "${cubit?.doctorInfo?.data?[index].name}",
                                        style: AppTextStyle().textInAppBar.copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Text("${cubit?.doctorInfo?.data?[index].rate}",
                                          style: AppTextStyle().textInAppBar.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),),
                                        const Icon(
                                          Icons.star,
                                          color: MyColors.yellow,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                    "${cubit?.doctorInfo?.data?[index].qualification}",
                                    style:AppTextStyle().greyText.copyWith(fontSize: 12.sp,height: 1.h)
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    //Navigator.pushNamed(context, 'PatientAppointmentInDoctor');
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   PatientAppointmentInDoctor(user: cubit, index:index)));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      left: 20.sp,
                                      right: 25.sp,
                                      top: 7.sp,
                                      bottom: 7.sp,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14.r),
                                      border: Border.all(color: MyColors.darkBlue),
                                    ),
                                    child: const Text(
                                      "Book now",
                                      style: TextStyle(color: MyColors.darkBlue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



class DoctorWidgetForPatientScreen2 extends StatelessWidget {
  const DoctorWidgetForPatientScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..getDoctorsList(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          DoctorListModel? cubit =LayoutCubit.get(context).doctorListModel;

          return Expanded(
            child: state is GetDoctorListLoadingState?
            const Center(
              child: CircularProgressIndicator(color: MyColors.darkBlue,),
            ):
            ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: 18.sp),
                child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.sp,vertical: 20.sp),
                  decoration: BoxDecoration(
                    color: MyColors.lightGrey,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: const [
                      BoxShadow(
                        color: MyColors.grey,
                        blurRadius: 5,
                        offset: Offset(1, 1), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/doctor.png"),
                          // Image.network("${cubit?.doctorInfo?.data?[index].image}"),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        "${cubit?.doctorInfo?.data?[index].name}",
                                        style: AppTextStyle().textInAppBar.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Text("${cubit?.doctorInfo?.data?[index].rate}",
                                          style: AppTextStyle().textInAppBar.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),),
                                        const Icon(
                                          Icons.star,
                                          color: MyColors.yellow,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                    "${cubit?.doctorInfo?.data?[index].qualification}",
                                    style:AppTextStyle().greyText.copyWith(fontSize: 12.sp,height: 1.h)
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    //Navigator.pushNamed(context, 'PatientAppointmentInDoctor');
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   PatientAppointmentInDoctor(user: cubit, index:index)));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      left: 20.sp,
                                      right: 25.sp,
                                      top: 7.sp,
                                      bottom: 7.sp,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      border: Border.all(color: MyColors.darkBlue),
                                    ),
                                    child: const Text(
                                      "Book now",
                                      style: TextStyle(color: MyColors.darkBlue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}