import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:nutri_mind_application/core/network/local_network.dart';

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
        Uri.parse('https://student.valuxapps.com/api//register'),
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
              "https://student.valuxapps.com/api/login"),
          body: {
            'email': email,
            'password': password,
          });
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['status'] == true) {
          //debugPrint("user login success and his data is : $data");
          await CacheNetwork.insertToCache(key: "token", value: responseData['data']['token']);
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
