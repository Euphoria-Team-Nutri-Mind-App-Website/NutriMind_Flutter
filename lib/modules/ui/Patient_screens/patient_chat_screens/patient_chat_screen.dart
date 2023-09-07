import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_chat_screens/patient_chat_widgets.dart';
import '../../../../shared/widgets/default_items.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientChatScreen extends StatelessWidget {
  const PatientChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientListChatsScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(
                "assets/images/doctor.png",
                height: 48,
                width: 48,
              ),
            ),
            Text(
              "Dr.Amilia john",
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            )
          ],
        ),
          actionIcon: [
            const Icon(Icons.phone,color: MyColors.black),
            Padding(
              padding: EdgeInsets.only(right: 15.sp,left: 15.sp),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "PatientCallScreen");
                },
                  child: const Icon(Icons.video_camera_back_outlined,color: MyColors.black)),
            )
          ]
      ),
      body: ListView(
        children: const [
          ChatSample(),
        ],
      ),
      //bottomSheet:const ChatBottom(),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.sp,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_alt_outlined,
                color: MyColors.darkBlue),
            label: ""
          ), const BottomNavigationBarItem(
            backgroundColor: MyColors.grey,
            icon: SmallTextField(
              hintText: 'Type your message',
              suffixIcon: Icon(Icons.sentiment_satisfied),
              obscureText: false,
              textType: TextInputType.name,
            ),
            label: ""
          ),
          BottomNavigationBarItem(
              backgroundColor: MyColors.darkBlue,
              icon: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.sp),
                    child: const Icon(Icons.image_outlined,color: MyColors.darkBlue,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.sp ,right: 18.sp),
                    child: const Icon(Icons.photo_camera_outlined,color: MyColors.darkBlue,),
                  ),
                  const Icon(Icons.mic,color: MyColors.darkBlue,),
                ],
              ),
              label: ""
          ),
        ],
      ),
    );
  }
}
