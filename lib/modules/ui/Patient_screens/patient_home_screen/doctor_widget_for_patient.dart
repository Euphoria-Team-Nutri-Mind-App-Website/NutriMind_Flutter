import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';

class DoctorWidgetForPatientScreen extends StatelessWidget {
  const DoctorWidgetForPatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 10.sp, right: 10.sp, top: 20.sp, bottom: 20.sp),
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
              SizedBox(
                width: 10.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Dr.john smith",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            fontFamily: 'Inter'),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      const Row(
                        children: [
                          Text("4.5"),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        ],
                      )
                    ],
                  ),
                  const Text(
                    "psychiatrist and",
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  const Text(
                    "nutritional",
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, 'PatientAppointmentInDoctor');
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 20.sp, right: 25.sp, top: 7.sp, bottom: 7.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: MyColors.darkBlue)),
                      child: const Text(
                        "Book now",
                        style: TextStyle(color: MyColors.darkBlue),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
