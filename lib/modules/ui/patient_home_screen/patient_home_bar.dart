import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/Constants/colors.dart';
import '../doctors_screen/doctor_widget.dart';

class HomeBarScreen extends StatefulWidget {
  const HomeBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBarScreen> createState() => _HomeBarScreenState();
}

class _HomeBarScreenState extends State<HomeBarScreen> {
  List vvv = [
    {
      "icon": Icons.chat,
      "name": "Chat",
    },
    {
      "icon": Icons.notes,
      "name": "Notes",
    },
    {
      "icon": Icons.email,
      "name": "Motivazone",
    },
    {
      "icon": Icons.cloud_upload,
      "name": "Upload",
    },
    {
      "icon": Icons.library_books_outlined,
      "name": "Library",
    },
    {
      "icon": Icons.question_mark,
      "name": "Question",
    },
    {
      "icon": Icons.notifications,
      "name": "Notifications",
    }
  ];
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(18.sp),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: MyColors.darkBlue),
                  borderRadius: BorderRadius.circular(10.r)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: MyColors.grey),
                  borderRadius: BorderRadius.circular(10.r)),
              fillColor: MyColors.lightGrey,
              filled: true,
              hintStyle: const TextStyle(color: MyColors.grey),
              hintText: "search for doctor",
              suffixIcon: const Icon(
                Icons.search,
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: MyColors.darkBlue),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(18.sp),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "All services",
                style: TextStyle(
                    fontFamily: 'Inter', fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(9.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: click ? MyColors.lightGrey : MyColors.darkBlue,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      child: Container(
                        width: 65.w,
                        height: 190.h,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(vvv[index]['icon'],
                                size: 33,
                                color: click
                                    ? MyColors.darkBlue
                                    : MyColors.lightGrey),
                            const SizedBox(height: 8),
                            Text(
                              "${vvv[index]['name']}",
                              style: TextStyle(
                                  color: click
                                      ? MyColors.darkBlue
                                      : MyColors.lightGrey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(18.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Top doctors",
                style: TextStyle(
                    fontFamily: 'Inter', fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'DoctorsScreen');
                },
                child: const Text(
                  "see all",
                  style: TextStyle(fontFamily: 'Inter'),
                ),
              )
            ],
          ),
        ),
        const SingleChildScrollView(
          child: DoctorWidget(),
        ),
      ],
    );
  }
}
