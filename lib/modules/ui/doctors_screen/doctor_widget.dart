import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/Constants/colors.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: const [
            BoxShadow(
              color: MyColors.grey,
              blurRadius: 5,
              offset: Offset(4, 4), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/doctor.png"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Dr.john smith",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        // SizedBox(width: 40.w),
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
                    const Text("psychiatrist and"),
                    const Text("nutritional"),
                    InkWell(
                      onTap: () {},
                      child: Container(
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
      ),
    );
  }
}