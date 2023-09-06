import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/patient_notes_widghts.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class PatientNotesScreen extends StatefulWidget {
  const PatientNotesScreen({Key? key}) : super(key: key);

  @override
  State<PatientNotesScreen> createState() => _PatientNotesScreenState();
}

class _PatientNotesScreenState extends State<PatientNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notes",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(height: 15.h),
            const Column(
              children: [
                NoteColumn(),
                NoteColumn(),
                NoteColumn(),
              ],
            )

          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: MyColors.darkBlue,
            onPressed: (){
              Navigator.pushNamed(context, "PatientAddNotes");
            },
            child: const Icon(Icons.add)
        )

    );
  }
}



