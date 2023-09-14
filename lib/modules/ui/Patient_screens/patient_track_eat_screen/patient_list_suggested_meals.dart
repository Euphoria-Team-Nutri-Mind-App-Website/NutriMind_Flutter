import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/text_theme.dart';

class PatientListMeals extends StatefulWidget {
  const PatientListMeals({super.key});

  @override
  State<PatientListMeals> createState() => _PatientListMealsState();
}

class _PatientListMealsState extends State<PatientListMeals> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) =>
            Row(
              children: [
                Container(
                    width: 50.w,
                    height: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r)
                    ),
                    child: Image.asset(
                      "assets/images/omlet.png", width: 100.w,)),
                SizedBox(width: 30.w,),
                Text("Greek Omelet with \nfeta and mint",
                  style: AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp),)
              ],
            ),
      ),
    );
  }
}
