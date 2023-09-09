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
  Future<void> patientRegister({
    required String name,
    required String email,
    required String age,
    required String gender,
    required String password,
    required String password_confirmation,
    required String height,
    required String first_weight,
    required String active_status,
  }) async {
    emit(RegisterLoadingState());

    try {
      final response = await http.post(
        Uri.parse('http://heda.azq1.com/patient/api/patient/register'),
        headers: {'lang': 'en'},
        body: {
          'name': name,
          'email': email,
          'age': age,
          'gender': gender,
          'password': password,
          'password_confirmation': password_confirmation,
          'height': height,
          'first_weight': first_weight,
          'active_status': active_status,
        },
      );

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        if (responseBody['status'] == true) {
          emit(RegisterSuccessState());
        } else {
          emit(RegisterFailedState(message: responseBody['message']));
        }
      }
      else {
        emit(RegisterFailedState(message: 'Server error: ${response.statusCode}'));
      }
    } catch (e) {
      emit(RegisterFailedState(message: 'An error occurred: $e'));
    }
  }
//***************************************************************************************************************
  void login({required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      Response response = await http
          .post(Uri.parse("https://student.valuxapps.com/api/login"), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['status'] == true) {
          //debugPrint("user login success and his data is : $data");
          await CacheNetwork.insertToCache(
              key: "token", value: responseData['data']['token']);
          emit(LoginSuccessState());
        } else {
          debugPrint(
              "failed to  login success and his data is : ${responseData['message']}");
          emit(LoginFailedState(message: responseData['message']));
        }
      }
    } catch (e) {
      emit(LoginFailedState(message: e.toString()));
    }
  }
}
