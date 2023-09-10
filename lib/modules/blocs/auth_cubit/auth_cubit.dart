import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:nutri_mind_application/core/network/local_network.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

//***************************************************************************************************************


  void patientRegister({
    required String name,
    required String email,
    required int age,
    required String gender,
    required String password,
    required String password_confirmation,
  }) async {
    emit(RegisterLoadingState());
    try {
      Response response = await http.post(
          Uri.parse(
              'http://heda.azq1.com/patient/api/patient/register'),
          body: {
            'name': name,
            'email': email,
            'age': age.toString(),
            'gender': gender,
            'password': password.toString(),
            'password_confirmation': password_confirmation.toString(),

          });
      var responseBody = jsonDecode(response.body);
      print(responseBody);
      print(responseBody['status']);
      if (responseBody['status'] == true) {
        print(responseBody['message']);
        emit(RegisterSuccessState());
      } else {
        print(responseBody['message']);
        emit(RegisterFailedState(message: responseBody['message']));
      }
    } catch(e){
      print(e);
      emit(RegisterFailedState(message: e.toString()));
    }
  }



//***************************************************************************************************************
  void login({required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      Response response = await http
          .post(Uri.parse("http://heda.azq1.com/patient/api/patient/login"), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        //print(responseData);
        if (responseData['status'] == 'True') {
          //debugPrint("user login success and his data is : $data");
          await CacheNetwork.insertToCache(
              key: "accessToken", value: responseData['0']['accessToken']);
          print("token is${responseData['0']['accessToken']}");
          emit(LoginSuccessState());
        }
        else {
          debugPrint(
              "failed to  login success and his data is : ${responseData['message']}");
          emit(LoginFailedState(message: responseData['message']));
        }
      }
    } catch (e) {
      print(e);
      emit(LoginFailedState(message: e.toString()));
    }
  }
}
