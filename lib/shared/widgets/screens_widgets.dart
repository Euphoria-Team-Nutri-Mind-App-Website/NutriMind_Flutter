import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/colors.dart';
import '../Constants/text_theme.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final validator;
  final suffixIcon;
  final textType;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    this.controller,
    this.suffixIcon,
    required this.textType,
    this.validator,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textType,
      controller: controller,
      obscureText: obscureText,
      validator: (input) {
        if (controller.text.isEmpty) {
          return '$hintText must not be empty';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyColors.darkBlue),
            borderRadius: BorderRadius.circular(10.r)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyColors.grey),
            borderRadius: BorderRadius.circular(10.r)),
        fillColor: MyColors.lightGrey,
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyle().greyText,
        suffixIcon: suffixIcon,
      )
    );
  }
}

class MySmallButton extends StatelessWidget {
  final String imageAsset;
  const MySmallButton({Key? key, required this.imageAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
              color: MyColors.grey, width: 0.5.w, style: BorderStyle.solid),
        ),
        child: Image(
          image: AssetImage(imageAsset),
        ),
      ),
    );
  }
}

class MyTextGroup extends StatelessWidget {
  final staticText;
  final dynamicText;
  final page;
  const MyTextGroup({
    Key? key,
    required this.staticText,
    required this.dynamicText,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        '$staticText',
        style: AppTextStyle().greyText.copyWith(color: MyColors.black)
      ),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, '$page');
        },
        child: Text(
          '$dynamicText',
            style: AppTextStyle().greyText.copyWith(color: MyColors.darkBlue)
        ),
      ),
    ]);
  }
}

class SmallTextField extends StatelessWidget {
  final controller;
  final suffixIcon;
  final prefixIcon;
  final textType;
  final String hintText;
  final bool obscureText;

  const SmallTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.textType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.darkBlue),
              borderRadius: BorderRadius.circular(17.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.grey),
              borderRadius: BorderRadius.circular(17.r)),
          fillColor: MyColors.lightGrey,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: MyColors.grey),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon),
    );
  }
}
