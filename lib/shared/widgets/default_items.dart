import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/colors.dart';
import '../Constants/text_theme.dart';

class MyBlueButton extends StatelessWidget {
  final double? width;
  final double? height;
  final IconData? icon;
  final String text;
  final String page;

  const MyBlueButton({
    Key? key,
    required this.text,
    required this.page,
    this.width,
    this.height,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: MyColors.darkBlue,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text, style: AppTextStyle().textBlueButton),
              if (icon != null)
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      icon,
                      color: MyColors.white,
                      size: 22.sp,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
//*******************************************************************************************************

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final backPage;
  Row? pageTitle;
  List<Widget>? actionIcon;
  MyAppBar({Key? key, required this.backPage, this.pageTitle, this.actionIcon})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: MyColors.white,
        elevation: 0.sp,
        leading: Padding(
          padding: EdgeInsets.only(left: 25.sp, top: 8.sp),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '$backPage');
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: MyColors.black,
                size: 25.sp,
              )),
        ),
        title: pageTitle,
        actions: actionIcon);
  }
}
