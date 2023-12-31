import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/doctor_profile_widgets.dart';
import '../../../../shared/widgets/default_items.dart';


class PatientLibraryScreen extends StatefulWidget {
  const PatientLibraryScreen({Key? key}) : super(key: key);

  @override
  State<PatientLibraryScreen> createState() => _PatientLibraryScreenState();
}

class _PatientLibraryScreenState extends State<PatientLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Image.asset('assets/images/logo.png',width :110.w)],
        ),
        actionIcon: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/careLogo.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 50.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To know more information about \nEating Disorder...',
                style:AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp,height: 1.2.sp)
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                  // onTap: () => launch(''),
                  child: ProfileButtons(
                    icon:Icons.web,
                    text: 'Go to url link',
                  ),),
              SizedBox(height: 70.h,),
              const Image(image: AssetImage("assets/images/library.png"),width: double.infinity,)
            ],
          ),
        ),
      ),
    );
  }
}
