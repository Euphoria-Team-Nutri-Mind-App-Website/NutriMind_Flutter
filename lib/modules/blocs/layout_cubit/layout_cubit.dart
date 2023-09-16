import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../../models/doctor_list_model.dart';
import '../../../models/doctor_profile_model.dart';
import '../../../models/generate_otp_model.dart';
import '../../../models/get_view_chat_message.dart';
import '../../../models/notes_model.dart';
import '../../../models/patient_model.dart';
import '../../../models/quotes_model.dart';
import '../../../models/recommended_calories_model.dart';
import '../../../models/track_weight_model.dart';
import '../../../models/view_all_chat_model.dart';
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
    }).catchError((onError) {
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
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(FailedToDoctorListDataState(error: onError.toString()));
    });
  }

//***************************************************************************************************************

  QoutesModel?qoutesModel;

  void Qoutes() async {
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
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(QuotesWithFailureState(error: onError.toString()));
    });
  }


//***************************************************************************************************************

  GenerateOtpModel?generateOtpModel;

  void generatOtp({
    required String email,}) async {
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
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(GenerateOtpWithFailureState(error: onError.toString()));
    });
  }

//***************************************************************************************************************


  RecommendedCaloriesModel?recommendedCaloriesModel;

  void GetRecommendedCalories() async {
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
      recommendedCaloriesModel =
          RecommendedCaloriesModel.fromJson(responseDate);
      emit(RecommendedCaloriesSuccessState());
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(RecommendedCaloriesWithFailureState(error: onError.toString()));
    });
  }

//***************************************************************************************************************

  void addNodes({
    required String body,
  }) async {
    emit(addNodesLoadingState());
    try {
      Response response = await http
          .post(Uri.parse("$BASEURl$Patient_AddNodes"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        },
        body: {
          'body': body,
        },
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          emit(addNodesSuccessState());
        }
        else {
          debugPrint(
              "failed to  login success and his data is : ${responseData['message']}");
          emit(addNodesWithFailureState(message: responseData['message']));
        }
      }
    } catch (e) {
      print(e);
      emit(addNodesWithFailureState(message: e.toString()));
    }
  }

//***************************************************************************************************************

  GetNotesModel?getNotesModel;

  void getNotes() async {
    emit(getNodesLoadingState());
    //print("your token is $accessToken");

    http.get(
      Uri.parse("$BASEURl$Patient_GetNodes"),
      headers:
      {
        'Accept': "application/json",
        'Authorization': 'Bearer ${accessToken!}',
      },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      getNotesModel = GetNotesModel.fromJson(responseDate);
      print("jjjj${responseDate}");
      print("oooooooo${getNotesModel?.notes?[0].body}");
      emit(getNodesSuccessState());
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(getNodesWithFailureState(message: onError.toString()));
    });
  }

  //***************************************************************************************************************

  DoctorProfileModel?doctorProfileModel;

  void getDoctorProfile() async {
    emit(getDoctorProfileLoadingState());
    //print("your token is $accessToken");

    http.get(
      Uri.parse("$BASEURl$Doctor_Priofile"),
      headers:
      {
        'Accept': "application/json",
        'Authorization': 'Bearer ${accessToken!}',
      },
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      doctorProfileModel = DoctorProfileModel.fromJson(responseDate);
      //print("nnnnn${doctorProfileModel?.doctorInformation?[0]}");
      NetworkImage("doctorProfileModel?.doctorInformation![0].image");
      emit(getDoctorProfileSuccessState());
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(getDoctorProfileWithFailureState(message: onError.toString()));
    });
  }

//***************************************************************************************************************

  // void enterCurrentWeight({
  //   required String current_weight,
  // }) async {
  //   emit(EnterCurrentWeightLoadingState());
  //   try {
  //     Response response = await http
  //         .post(Uri.parse("$BASEURl$Patient_EnterWeight"),
  //       headers:
  //       {
  //         'Accept': "application/json",
  //         'Authorization': 'Bearer ${accessToken!}',
  //       },
  //       body: {
  //         'current_weight': current_weight,
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       var responseData = jsonDecode(response.body);
  //       if (responseData['success'] == true) {
  //         emit(EnterCurrentWeightSuccessState());
  //       }
  //       else {
  //         debugPrint(
  //             "failed to  login success and his data is : ${responseData['message']}");
  //         emit(EnterCurrentWeightWithFailureState(
  //             message: responseData['message']));
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //     emit(EnterCurrentWeightWithFailureState(message: e.toString()));
  //   }
  // }


//***************************************************************************************************************

  TrackWeightModel? trackWeightModel;

  void trackWeight() async {
    emit(TrackWeightLoadingState());
    print("your token is $accessToken");

    http.get(
        Uri.parse("$BASEURl$Patient_TrackWeight"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      trackWeightModel = TrackWeightModel.fromJson(responseDate);
      emit(TrackWeightSuccessState());
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(TrackWeightWithFailureState(message: onError.toString()));
    });
  }

  //***************************************************************************************************************


  ViewAllChatModel? viewAllChatModel;

  void getAllChatView() async {
    emit(getAllChatViewLoadingState());
    print("your token is $accessToken");

    http.get(
        Uri.parse("$BASEURl$Patient_AllChatView"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      viewAllChatModel = ViewAllChatModel.fromJson(responseDate);
      emit(getAllChatViewSuccessState());
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(getAllChatViewWithFailureState(message: onError.toString()));
    });
  }

  //***************************************************************************************************************


  ViewAllChatMessageModel? viewAllChatMessageModel;

  void getAllChatMessage({required String receiver_name}) async {
    emit(getAllChatMessageLoadingState());
    print("your token is $accessToken");

    http.get(
        Uri.parse("$BASEURl/api/show-chat-messages?receiver_name=${receiver_name}"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        }
    ).then((value) {
      var responseDate = jsonDecode(value.body);
      print(responseDate);
      viewAllChatModel = ViewAllChatModel.fromJson(responseDate);
      emit(getAllChatMessageSuccessState());
    }).catchError((onError) {
      print("onError error ${onError.toString()}");
      emit(getAllChatMessageWithFailureState(message: onError.toString()));
    });
  }

  //***************************************************************************************************************


  void startNewChat({required int num}) async {
    emit(addNodesLoadingState());
    try {
      Response response = await http
          .post(Uri.parse("$BASEURl/api/create-chat/${num}"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        },
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          emit(startNewChatSuccessState());
        }
        else {
          debugPrint(
              "failed to  login success and his data is : ${responseData['message']}");
          emit(startNewChatWithFailureState(message: responseData['message']));
        }
      }
    } catch (e) {
      print(e);
      emit(startNewChatWithFailureState(message: e.toString()));
    }
  }


  //***************************************************************************************************************



  void getState({required String active_status}) async {
    emit(getStateLoadingState());
    try {
      Response response = await http
          .post(Uri.parse("$BASEURl/patient/api/patient/active-status"),
        headers:
        {
          'Accept': "application/json",
          'Authorization': 'Bearer ${accessToken!}',
        },
        body: {
            "active_status":active_status
        }
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          emit(getStateSuccessState());
        }
        else {
          debugPrint(
              "failed to  login success and his data is : ${responseData['message']}");
          emit(getStateWithFailureState(message: responseData['message']));
        }
      }
    } catch (e) {
      print(e);
      emit(getStateWithFailureState(message: e.toString()));
    }
  }


}
