// import 'dart:convert';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:http/http.dart' as http;
// part 'calories_state.dart';
//
//
// class CaloriesCubit extends Cubit<CaloriesState> {
//   CaloriesCubit() : super(CaloriesInitial());
//
//    getHeight({
//     required String email,
//   }) async {
//     emit(GetHeightLoadingState());
//     try {
//       Response response = await http.post(
//           Uri.parse(
//               'http://heda.azq1.com/patient/api/patient/height'),
//           headers:
//           {
//             'Accept': "application/json",
//           },
//           body: {
//             'email': email,
//           });
//       var responseBody = jsonDecode(response.body);
//       print(responseBody);
//       print(responseBody['status']);
//       if (responseBody['status'] == 200) {
//         // await CacheNetwork.insertToCache(key: "accessToken", value: responseBody['0']['accessToken']);
//         // print("token is ${responseBody['0']['accessToken']}");
//         // print(responseBody['message']);
//         emit(GetHeightSuccessState());
//       } else {
//         print(responseBody['message']);
//         emit(FailedToGetHeightState(error: ''));
//       }
//     } catch(e){
//       print(e);
//       emit(FailedToGetHeightState(error: ''));
//     }
//   }
// }
