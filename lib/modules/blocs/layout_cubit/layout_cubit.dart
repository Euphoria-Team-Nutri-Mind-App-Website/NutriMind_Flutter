import 'dart:convert';
import 'package:bloc/bloc.dart';
//import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../core/network/local_network.dart';
import '../../../models/doctor_list_model.dart';
import '../../../models/forget_password/generate_otp_model.dart';
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
      //print(responseDate);
      patientModel = PatientModel.fromJson(responseDate);
      print("mmmm ${patientModel?.patientInformation?[0]}");
      emit(GetDoctorListSuccessState());

    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(FailedToDoctorListDataState(error: onError.toString()));

    });
  }

//***************************************************************************************************************


  // void changePassword({required String userCurrentPassword,required String newPassword}) async {
  //   emit(ChangePasswordLoadingState());
  //   Response response = await http.post(
  //       Uri.parse("https://student.valuxapps.com/api/change-password"),
  //       headers:
  //       {
  //         'Accept': 'application/json'
  //       },
  //       body: {
  //         'current_password' : userCurrentPassword,
  //         'new_password' : newPassword,
  //       }
  //   );
  //   var responseDecoded = jsonDecode(response.body);
  //   if( response.statusCode == 200 )
  //   {
  //     if( responseDecoded['status'] == true )
  //     {
  //       emit(ChangePasswordSuccessState());
  //     }
  //     else
  //     {
  //       emit(ChangePasswordWithFailureState(responseDecoded['message']));
  //     }
  //   }
  //   else
  //   {
  //     emit(ChangePasswordWithFailureState("something went wrong, try again later"));
  //   }
  // }


//***************************************************************************************************************

  GenerateOtpModel?generateOtpModel;
  void generatOtp({
    required String email, })async {
    emit(GenerateOtpLoadingState());
    print("your token is $accessToken");

    http.get(
        Uri.parse("http://heda.azq1.com/patient/api/patient/generate-otp?${email}"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      patientModel = PatientModel.fromJson(responseDate);
      emit(GenerateOtpSuccessState());
    }).catchError((onError){
      print("onError error ${onError.toString()}");
      emit(GenerateOtpWithFailureState());

    });
  }

}
