import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_chat_screens/patient_chat_screen.dart';

import '../../../../models/doctor_list_model.dart';
import '../../../../models/view_all_chat_model.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..getAllChatView(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          ViewAllChatModel? cubit =LayoutCubit.get(context).viewAllChatModel;
          return Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r)),
            ),
            child:
            cubit != null?
            Expanded(
              child: ListView.builder(
                  itemCount: cubit?.chat?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>
                                  PatientChatScreen(user: cubit, index: index,)));
                          //Navigator.pushNamed(context, 'PatientChatScreen');
                        },
                        child: Container(
                          height: 85,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset(
                                  "assets/images/doctor.png",
                                  height: 65,
                                  width: 65,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${cubit?.chat?[index].receiverName}",
                                        style: TextStyle(
                                          color: MyColors.black,
                                          fontFamily: 'Inter',
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 90.w),
                                      Text(
                                        "2:35 Pm",
                                        style: TextStyle(
                                          color: MyColors.black,
                                          fontFamily: 'Inter',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Thank you for you support",
                                        style: TextStyle(
                                          color: MyColors.grey,
                                          fontFamily: 'Inter',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 70.w),
                                      Container(
                                        height: 15.h,
                                        width: 18.w,
                                        decoration: BoxDecoration(
                                            color: MyColors.darkBlue,
                                            borderRadius: BorderRadius.circular(
                                                70)),
                                        child: const Center(
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: MyColors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ):
            const Center(child: CircularProgressIndicator(color: MyColors.darkBlue))
          );
        },
      ),
    );
  }
}


class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(25.sp),
          child: Row(
            children: [
              const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: MyColors.grey,
                  )),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "yesterday",
                style: TextStyle(
                    color: MyColors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                width: 15.w,
              ),
              const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: MyColors.grey,
                  )),
            ],
          ),
        ),
    Padding(
    padding: EdgeInsets.all(25.sp),
    child: ClipPath(
    clipper: UpperNipMessageClipper(MessageType.receive),
    child: Container(
    padding: EdgeInsets.all(25.sp),
    decoration: BoxDecoration(
    color: MyColors.darkBlue,
    boxShadow: [
    BoxShadow(
    color: Colors.red,
    spreadRadius: 2,
    blurRadius: 10,
    offset: Offset(3, 3),
    )
    ],
    ),
    child: Text(
    "May ask you dr for advice",
    style: TextStyle(
    color: MyColors.white,
    fontFamily: 'Inter',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    ),
    ),
    ),
    ),
    ),
        //ChatTextReceive(),
        ChatTextSend(),
        Padding(
          padding: EdgeInsets.all(25.sp),
          child: Row(
            children: [
              const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: MyColors.grey,
                  )),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "Today",
                style: TextStyle(
                    color: MyColors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                width: 15.w,
              ),
              const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: MyColors.grey,
                  )),
            ],
          ),
        ),
        ChatTextSend(),
        ChatTextReceive(),
      ],
    );
  }
}


class ChatTextSend extends StatelessWidget {
  const ChatTextSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 130),
      child: ClipPath(
        clipper: UpperNipMessageClipper(MessageType.send),
        child: Container(
          padding: EdgeInsets.all(25.sp),
          decoration: BoxDecoration(
            color: MyColors.lightGrey,
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(3, 3),
              )
            ],
          ),
          child: Text(
            "May ask you dr for advice",
            style: TextStyle(
              color: MyColors.darkBlue,
              fontFamily: 'Inter',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ChatTextReceive extends StatelessWidget {
  const ChatTextReceive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LayoutCubit(),///kkkkkkkkkkkkkkkkkkkkk
  child: BlocConsumer<LayoutCubit, LayoutState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Padding(
      padding: EdgeInsets.all(25.sp),
      child: ClipPath(
        clipper: UpperNipMessageClipper(MessageType.receive),
        child: Container(
          padding: EdgeInsets.all(25.sp),
          decoration: BoxDecoration(
            color: MyColors.darkBlue,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(3, 3),
              )
            ],
          ),
          child: Text(
            "May ask you dr for advice",
            style: TextStyle(
              color: MyColors.white,
              fontFamily: 'Inter',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  },
),
);
  }
}


class ChatBottom extends StatelessWidget {
  const ChatBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      decoration: const BoxDecoration(
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
              color: MyColors.lightGrey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),

            )
          ]
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.back_hand_rounded, color: MyColors.darkBlue),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerRight,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Type your message',

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
