import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_chat_screens/patient_chat_screen.dart';
import '../../../../shared/widgets/default_items.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientCallScreen extends StatefulWidget {
  const PatientCallScreen({Key? key}) : super(key: key);

  @override
  State<PatientCallScreen> createState() => _PatientCallScreenState();
}

class _PatientCallScreenState extends State<PatientCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.white,
          elevation: 0.sp,
          leading: Padding(
            padding: EdgeInsets.only(left: 25.sp, top: 8.sp),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>PatientChatScreen(user: null, index: 1,)));
                },
                icon: Icon(
                  Icons.arrow_back_ios,

                  color: MyColors.black,
                  size: 25.sp,
                )),
          ),
      ),
      // MyAppBar(
      //   backPage: 'PatientChatScreen',
      //
      // ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.sp,right: 18.sp,top: 18.sp),
            child: const SmallTextField(
              hintText: 'Search for service',
              suffixIcon: Icon(Icons.search_outlined),
              obscureText: true,
              textType: TextInputType.text,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.sp,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.mic,
                  color: MyColors.darkBlue),
              label: ""
          ),BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_front_outlined,
                  color: MyColors.darkBlue),
              label: ""
          ),BottomNavigationBarItem(
              icon: Icon(Icons.call,
                  color: MyColors.darkBlue),
              label: ""
          ),
        ],
      ),
    );
  }
}