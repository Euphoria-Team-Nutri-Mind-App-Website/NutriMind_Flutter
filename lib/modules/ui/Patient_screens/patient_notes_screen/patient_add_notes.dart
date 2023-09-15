import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/Constants/text_theme.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../blocs/layout_cubit/layout_cubit.dart';

class PatientAddNotes extends StatefulWidget {
  const PatientAddNotes({Key? key}) : super(key: key);

  @override
  State<PatientAddNotes> createState() => _PatientAddNotesState();
}

class _PatientAddNotesState extends State<PatientAddNotes> {
  final addQuotesController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          if (state is addNodesSuccessState) {
            Navigator.pushNamed(context, 'PatientNotesScreen');
          } else if (state is addNodesWithFailureState) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text(
                  state.message,
                  style:
                  AppTextStyle().greyText.copyWith(color: MyColors.white),
                ),
                backgroundColor: MyColors.darkBlue,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: MyAppBar(
              backPage: 'PatientNotesScreen',
              actionIcon: const [
                Icon(Icons.bookmark, color: MyColors.black,),
                Icon(Icons.delete, color: MyColors.black),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.all(25.sp),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Address",
                      style: TextStyle(
                          color: MyColors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins'
                      ),
                    ),
                    const SizedBox(height: 9),
                    TextFormField(
                      controller: addQuotesController,

                    )
                  ],
                ),
              ),
            ),
              floatingActionButton: FloatingActionButton(
                  elevation: 0.0,
                  backgroundColor: MyColors.darkBlue,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<LayoutCubit>(context).addNodes(
                          body: addQuotesController.text
                      );
                  }
                    //Navigator.pushNamed(context, "PatientNotesScreen");
                  },
                  child: const Icon(Icons.check)
              )
          );
        },
      ),
    );
  }
}
