import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/notes_model.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientNotesScreen extends StatefulWidget {
  const PatientNotesScreen({Key? key}) : super(key: key);

  @override
  State<PatientNotesScreen> createState() => _PatientNotesScreenState();
}

class _PatientNotesScreenState extends State<PatientNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LayoutCubit()..getNotes(),
  child: BlocConsumer<LayoutCubit, LayoutState>(
  listener: (context, state) {},
  builder: (context, state) {
    GetNotesModel? cubit = LayoutCubit.get(context).getNotesModel;
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientNavBarScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notes",
                style:AppTextStyle().textInAppBar
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            cubit != null?
            Expanded(
              child: GridView.builder(
                itemCount: cubit.notes?.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context,i){
                          return Container(
                            margin: EdgeInsets.all(10.sp),
                            height: 136.h,
                            width: 130.w,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(color: MyColors.darkBlue, width: 0.5.w, style: BorderStyle.solid),
                              color: MyColors.lightGrey,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Container( width: 70.0, ), Flexible( child: Text("Hi"), )
                                  Flexible(
                                    child: Text("${cubit.notes?[i].body}",
                                      style: TextStyle(
                                          color: MyColors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(onPressed: (){
                                  }, icon:
                                  const Icon(Icons.more_vert,color: MyColors.black),)
                                ],
                              ),
                            ),
                            // Icon(Icons.more_vert)

                          );
                  }
              ),
            ):
                const Center(child: CircularProgressIndicator(color: MyColors.darkBlue))
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
  },
),
);
  }
}



