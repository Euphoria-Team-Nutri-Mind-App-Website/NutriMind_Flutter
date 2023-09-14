import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:nutri_mind_application/core/network/local_network.dart';

import '../../../../shared/Constants/api_constants.dart';
import '../../../../shared/Constants/constants.dart';
part 'doctor_auth_state.dart';



class DoctorAuthCubit extends Cubit<DoctorAuthState> {
  DoctorAuthCubit() : super(DoctorAuthInitial());


  void doctorLogin({required String email, required String password}) async {
    emit(DoctorLoginLoadingState());
    try {
      Response response = await http
          .post(Uri.parse("$BASEURl$Doctor_LogIn"), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        //print(responseData);
        if (responseData['status'] == true) {
          //debugPrint("user login success and his data is : $data");

          await CacheNetwork.insertToCache(key: "accessToken", value: responseData['0']['accessToken']);
          await CacheNetwork.insertToCache(key: "password", value: password);
          accessToken=await CacheNetwork.getCacheData(key: "accessToken");
          currentPassword=await CacheNetwork.getCacheData(key: "password");

          print("token is ${responseData['0']['accessToken']}");
          print("currentPassword is ${password}");

          emit(DoctorLoginSuccessState());
        }
        else {
          debugPrint(
              "failed to  login success and his data is : ${responseData['message']}");
          emit(DoctorLoginFailedState(message: responseData['message']));
        }
      }
    } catch (e) {
      print(e);
      emit(DoctorLoginFailedState(message: e.toString()));
    }
  }

  //***************************************************************************************************************


  void doctorRegister({
    required String name,
    required String email,
    required String phone,
    required String national_id,
    required String qualification,
    required String password,
    required String password_confirmation,
    required String experience_years,
    required String gender,
    required String credit_card_number,
    required String vodafone_cash,
    required String price,
  }) async {
    emit(DoctorRegisterLoadingState());
    try {
      Response response = await http.post(
          Uri.parse(
              '$BASEURl$Doctor_Register'),
          headers:
          {
            'Accept': "application/json",
          },
          body: {
            'name': name,
            'email': email,
            'phone': phone,
            'national_id': national_id,
            'qualification': qualification,
            'password': password,
            'password_confirmation': password_confirmation,
            'experience_years': experience_years,
            'gender': gender,
            'credit_card_number': credit_card_number,
            'vodafone_cash': vodafone_cash,
            'price': price
          });
      var responseBody = jsonDecode(response.body);
      print(responseBody);
      print(responseBody['status']);
      if (responseBody['status'] == true) {
        await CacheNetwork.insertToCache(key: "accessToken", value: responseBody['0']['accessToken']);
        await CacheNetwork.insertToCache(key: "password", value: password);
        accessToken=await CacheNetwork.getCacheData(key: "accessToken");
        currentPassword=await CacheNetwork.getCacheData(key: "password");

        print("token is ${responseBody['0']['accessToken']}");
        print("currentPassword is ${password}");
        print(responseBody['message']);
        emit(DoctorRegisterSuccessState());
      } else {
        print(responseBody['message']);
        emit(DoctorRegisterFailedState(message: responseBody['message']));
      }
    } catch(e){
      print(e);
      emit(DoctorRegisterFailedState(message: e.toString()));
    }
  }





}



