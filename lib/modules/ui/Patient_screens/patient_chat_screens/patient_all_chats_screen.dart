import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/widgets/screens_widgets.dart';

import '../../../../shared/Constants/colors.dart';

class PatientAllChatsScreen extends StatelessWidget {
  const PatientAllChatsScreen({Key? key}) : super(key: key);

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
            )
          ],
        ),
      ),
      // body:,
    );
  }
}
