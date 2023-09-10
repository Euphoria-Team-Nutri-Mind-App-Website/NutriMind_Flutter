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
    print("your token is $accessToken");

    http.get(
        Uri.parse("https://heda.azq1.com/patient/api/patient/profile"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': accessToken!,
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      patientModel = PatientModel.fromJson(responseDate);
      emit(GetUserDataSuccessState());
    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(FailedToGetUserDataState(error: onError.toString()));

    });

  }

}
