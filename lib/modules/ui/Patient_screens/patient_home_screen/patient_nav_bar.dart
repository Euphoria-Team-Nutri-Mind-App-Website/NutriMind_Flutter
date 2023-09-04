import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_home_screen/patient_home_services.dart';
import '../../../../shared/Constants/colors.dart';
import '../patient_chat_screens/patient_list_chats_screen.dart';
import '../patient_profile&settings&report/patient_profile.dart';
import '../patient_puzzle_screens/puzzle_start_screen.dart';

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
    const PatientListChatsScreen(),
    const PuzzleStartScreen(),
    const PatientProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:MyColors.darkBlue,
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
