import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../../../models/patient_model.dart';
import '../../../shared/Constants/constants.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  PatientModel? patientModel;

  void getUserData() async {
    emit(GetUserDataLoadingState());
    print(" is $token token ");

    http.get(
        Uri.parse("https://student.valuxapps.com/api/profile"),
        headers:
        {
          'Authorization': token!,
          'lang': "en"
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      patientModel = PatientModel.fromJson(data: responseDate['data']);
      emit(GetUserDataSuccessState());
    }).catchError((onError){
      emit(FailedToGetUserDataState(error: onError));

    });

  }

}