import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientAddNotes extends StatelessWidget {
  const PatientAddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNotesScreen',
        actionIcon: const [
          Icon(Icons.bookmark,color: MyColors.black,),
          Icon(Icons.delete,color: MyColors.black),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25.sp),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Address",
              style: TextStyle(
                color: MyColors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 9),
            TextField()
          ],
        ),
      ),
    );
  }
}
