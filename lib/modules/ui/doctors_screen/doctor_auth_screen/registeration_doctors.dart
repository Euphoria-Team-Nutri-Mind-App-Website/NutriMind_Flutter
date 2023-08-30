
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';

class RegistrationDoctorScreen extends StatelessWidget {
  const RegistrationDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'ContinueScreen');
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
        actions: const [
          Padding(
            padding: EdgeInsets.all(11.0),
            child: Icon(Icons.menu, color: MyColors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(25.sp),
            color: MyColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Nutri Mind",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: MyColors.grey),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'Enter your name',
                  obscureText: false,
                  textType: TextInputType.name,
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'Email',
                  obscureText: false,
                  textType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'Phone Number',
                  obscureText: false,
                  textType: TextInputType.phone,
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'Address',
                  obscureText: false,
                  textType: TextInputType.name,
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'National Id',
                  obscureText: false,
                  textType: TextInputType.phone,
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'Gender',
                  obscureText: false,
                  textType: TextInputType.text,
                ),
                SizedBox(
                  height: 40.h,
                ),
                const MyTextField(
                  hintText: 'Qualivication',
                  obscureText: false,
                  textType: TextInputType.text,
                ),
                SizedBox(
                  height: 28.h,
                ),
                const MyBlueButton(text: "Register", page: ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
