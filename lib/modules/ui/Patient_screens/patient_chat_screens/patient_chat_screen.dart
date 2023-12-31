import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/modules/ui/Patient_screens/patient_chat_screens/patient_chat_widgets.dart';
import '../../../../models/doctor_list_model.dart';
import '../../../../models/get_view_chat_message.dart';
import '../../../../models/view_all_chat_model.dart';
import '../../../../shared/widgets/default_items.dart';

import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientChatScreen extends StatelessWidget {
  const PatientChatScreen({Key? key, required this.user, required this.index}) : super(key: key);
  final DoctorListModel? user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          backPage: 'PatientListChatsScreen',
          pageTitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  "assets/images/doctor.png",
                  height: 48,
                  width: 48,
                ),
              ),
              Text(
                "${user?.doctorInfo?.data?[index].name}",
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              )
            ],
          ),
          actionIcon: [
            const Icon(Icons.phone,color: MyColors.black),
            Padding(
              padding: EdgeInsets.only(right: 15.sp,left: 15.sp),
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "PatientCallScreen");
                  },
                  child: const Icon(Icons.video_camera_back_outlined,color: MyColors.black)),
            )
          ]
      ),
      body: BlocProvider(
        create: (context) => LayoutCubit()..getAllChatMessage(receiver_name: "${user?.doctorInfo?.data?[index].name}"),//LayoutCubit LayoutState
        child: BlocConsumer<LayoutCubit, LayoutState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            ViewAllChatMessageModel? cubit =LayoutCubit.get(context).viewAllChatMessageModel;

            //ViewAllChatMessageModel cubit =ViewAllChatMessageModel
            return ListView(
              children: [
                Column(
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
                            //"${cubit?.message?[index].content}",
                            "hiiii",
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
                )
                //ChatSample(),
              ],
            );
          },
        ),
      ),
      //bottomSheet:const ChatBottom(),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.sp,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up_alt_outlined,
                  color: MyColors.darkBlue),
              label: ""
          ), const BottomNavigationBarItem(
              backgroundColor: MyColors.grey,
              icon: SmallTextField(
                hintText: 'Type your message',
                suffixIcon: Icon(Icons.sentiment_satisfied),
                obscureText: false,
                textType: TextInputType.name,
              ),
              label: ""
          ),
          BottomNavigationBarItem(
              backgroundColor: MyColors.darkBlue,
              icon: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.sp),
                    child: const Icon(Icons.image_outlined,color: MyColors.darkBlue,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.sp ,right: 18.sp),
                    child: const Icon(Icons.photo_camera_outlined,color: MyColors.darkBlue,),
                  ),
                  const Icon(Icons.mic,color: MyColors.darkBlue,),
                ],
              ),
              label: ""
          ),
        ],
      ),
    );
  }
}