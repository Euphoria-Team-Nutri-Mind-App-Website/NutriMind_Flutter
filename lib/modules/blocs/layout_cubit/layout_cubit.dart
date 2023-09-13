import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../models/doctor_list_model.dart';
import '../../../models/forget_password/generate_otp_model.dart';
import '../../../models/patient_model.dart';
import '../../../models/quotes_model.dart';
import '../../../models/recommended_calories_model.dart';
import '../../../shared/Constants/api_constants.dart';
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
        Uri.parse("$BASEURl$Patient_Profile"),
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
        Uri.parse("$BASEURl$Patient_ListOfDoctors"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      //print(responseDate);
      doctorListModel = DoctorListModel.fromJson(responseDate);
      emit(GetDoctorListSuccessState());

    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(FailedToDoctorListDataState(error: onError.toString()));

    });
  }

//***************************************************************************************************************

  QoutesModel?qoutesModel;
  void Qoutes()async {
    emit(QuotesLoadingState());
    print("your token is $accessToken");

    http.get(
      Uri.parse("$BASEURl$Patient_Quotes"),
      headers:
      {
        'Accept': "application/json",
        'Authorization': 'Bearer ${accessToken!}',
      },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      //print(responseDate);
      qoutesModel = QoutesModel.fromJson(responseDate);
      //print("lllll${qoutesModel?.quotes?.length}");
      //print("lllll${qoutesModel?.quotes?[0]}");
      emit(QuotesSuccessState());
    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(QuotesWithFailureState(error: onError.toString()));

    });
  }




//***************************************************************************************************************

  GenerateOtpModel?generateOtpModel;
  void generatOtp({
    required String email, })async {
    emit(GenerateOtpLoadingState());
    print("your token is $accessToken");

    http.get(
      Uri.parse("$BASEURl/patient/api/patient/generate-otp?email=$email"),
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


  RecommendedCaloriesModel?recommendedCaloriesModel;
  void GetRecommendedCalories()async {
    emit(RecommendedCaloriesLoadingState());
    print("your token is $accessToken");

    http.get(
      Uri.parse("$BASEURl$Patient_RecommendedCalories"),
      headers:
      {
        'Accept': "application/json",
        'Authorization': 'Bearer ${accessToken!}',
      },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      //print(responseDate);
      recommendedCaloriesModel = RecommendedCaloriesModel.fromJson(responseDate);
      //print("lllll${qoutesModel?.quotes?.length}");
      //print("lllll${qoutesModel?.quotes?[0]}");
      emit(RecommendedCaloriesSuccessState());
    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(RecommendedCaloriesWithFailureState(error: onError.toString()));

    });
  }


}
