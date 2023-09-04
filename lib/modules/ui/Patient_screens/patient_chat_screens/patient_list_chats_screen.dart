import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_chat_screens/patient_chat_widgets.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';
import '../../../../shared/Constants/colors.dart';

class PatientListChatsScreen extends StatelessWidget {
  const PatientListChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chats",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            ),
            SizedBox(width: 30.w),
          ],
        ),
      ),
       body: Container(
         color: MyColors.white,
         child: ListView(
           children: [
             Padding(
               padding: EdgeInsets.only(left: 25.sp,right: 25.sp,top: 25.sp),
               child: const SmallTextField(
                 hintText: 'Search for doctor',
                 suffixIcon: Icon(Icons.search_outlined),
                 obscureText: true,
                 textType: TextInputType.text,
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 25.sp,top: 25.sp),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Messages",
                     style: TextStyle(
                       color: MyColors.black,
                       fontFamily: 'Inter',
                       fontWeight: FontWeight.w600,
                       fontSize: 18.sp
                     ),
                   ),
                   SizedBox(height: 5.h,),
                   const RecentChats(),
                 ],
               ),
             ),

           ]
         ),
       ),
    );
  }
}
