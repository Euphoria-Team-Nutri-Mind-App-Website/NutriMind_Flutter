import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_home_screen/patient_home_services.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../chats_screen/chat_screen/chat_screen.dart';
import '../patient_profile/patient_profile.dart';
import '../puzzle_screens/puzzle_screen.dart';

class PatientNavBarScreen extends StatefulWidget {
  const PatientNavBarScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PatientNavBarScreenState();
  }
}

class PatientNavBarScreenState extends State<PatientNavBarScreen> {
  int _currentIndex = 0;
  bool click = true;

  List<Widget> widgetList = [
    const PatientHomeServicesScreen(),
    const ChatScreen(),
    const PuzzleScreen(),
    const PatientProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.sp,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: MyColors.grey,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.align_vertical_center),
            label: 'Puzzle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            MyColors.darkBlue;
          });
        },
      ),
    );
  }
}
