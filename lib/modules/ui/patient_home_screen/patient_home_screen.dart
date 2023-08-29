import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/patient_home_screen/patient_home_bar.dart';
import '../../../shared/Constants/colors.dart';

class PatientHomeScreen extends StatefulWidget {
  const PatientHomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PatientHomeScreenState();
  }
}

class PatientHomeScreenState extends State<PatientHomeScreen> {
  int _currentIndex = 0;
  bool click = true;

  List<Widget> widgetList = [
    const HomeBarScreen(),
    const Text('Chat'),
    const Text('Heart'),
    const Text('Person'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0.sp,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'LoginScreen');
            },
            icon: const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.black,
                  size: 25,
                ),
              ],
            )),
        title: Image(
          image: const AssetImage(
            "assets/images/logo.png",
          ),
          width: 80.w,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(11.sp),
            child: const Icon(Icons.menu, color: MyColors.black),
          )
        ],
      ),
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: MyColors.darkBlue,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: 'Favourite',
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
