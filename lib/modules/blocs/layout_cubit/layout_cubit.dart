import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../models/doctor_list_model.dart';
import '../../../models/forget_password/generate_otp_model.dart';
import '../../../models/patient_model.dart';
import '../../../models/quotes_model.dart';
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
          'Authorization': 'Bearer ${accessToken!}',
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


//***************************************************************************************************************

  DoctorListModel? doctorListModel;
  void getDoctorsList() async {
    emit(GetDoctorListLoadingState());
    print("your token is $accessToken");

    http.get(
        Uri.parse("https://heda.azq1.com/api/doctors"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      doctorListModel = DoctorListModel.fromJson(responseDate);
      emit(GetDoctorListSuccessState());

    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(FailedToDoctorListDataState(error: onError.toString()));

    });
  }

//***************************************************************************************************************

  GenerateOtpModel?generateOtpModel;
  void generatOtp({
    required String email, })async {
    emit(GenerateOtpLoadingState());
    print("your token is $accessToken");

    http.get(
        Uri.parse("http://heda.azq1.com/patient/api/patient/generate-otp?email=$email"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      generateOtpModel = GenerateOtpModel.fromJson(responseDate);
      emit(GenerateOtpSuccessState());
    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(GenerateOtpWithFailureState(error: onError.toString()));

    });
  }

//***************************************************************************************************************

  QoutesModel?qoutesModel;
  void Qoutes()async {
    emit(QuotesLoadingState());
    print("your token is $accessToken");

    http.get(
      Uri.parse("http://heda.azq1.com/api/qoutes"),
      headers:
      {
        'Accept': "application/json",
        'Authorization': 'Bearer ${accessToken!}',
      },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      qoutesModel = QoutesModel.fromJson(responseDate);
      print("lllll${qoutesModel?.quotes?.length}");
      print("lllll${qoutesModel?.quotes?[0]}");
      emit(QuotesSuccessState());
    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(QuotesWithFailureState(error: onError.toString()));

    });
  }




//***************************************************************************************************************


}
