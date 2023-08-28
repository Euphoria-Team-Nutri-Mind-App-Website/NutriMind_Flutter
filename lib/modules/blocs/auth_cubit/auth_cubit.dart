import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  void register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(RegisterLoadingState());
    Response response = await http.post(
        Uri.parse(
            'https://25a1-197-43-117-235.ngrok.io/patient/api/patient/register'),
        body: {
          'name': name,
          'email': email,
          'password': password,
          'phone': confirmPassword,
        });
    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      emit(RegisterSuccessState());
    } else {
      emit(RegisterFailedState(message: responseBody['message']));
    }
  }

  void login({required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      Response response = await http.post(
          Uri.parse(
              "https://b128-197-43-0-96.ngrok.io/patient/api/patient/login"),
          body: {
            'email': email,
            'password': password,
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['status'] == true) {
          debugPrint("user login success and his data is : $data");
          emit(LoginSuccessState());
        } else {
          debugPrint(
              "failed to  login success and his data is : ${data['message']}");
          emit(LoginFailedState());
        }
      }
    } catch (e) {
      emit(LoginFailedState());
    }
  }
}
