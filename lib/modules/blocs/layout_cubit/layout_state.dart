part of 'layout_cubit.dart';

abstract class LayoutState {}

class LayoutInitial extends LayoutState {}

//***************************************************************************************************************

class GetUserDataSuccessState extends LayoutState {}

class GetUserDataLoadingState extends LayoutState {}

class FailedToGetUserDataState extends LayoutState {
  String error;
  FailedToGetUserDataState({required this.error});
}

//***************************************************************************************************************

class GetDoctorListSuccessState extends LayoutState {}

class GetDoctorListLoadingState extends LayoutState {}

class FailedToDoctorListDataState extends LayoutState {
  String error;
  FailedToDoctorListDataState({required this.error});
}

//***************************************************************************************************************

class GenerateOtpLoadingState extends LayoutState{}
class GenerateOtpSuccessState extends LayoutState{}
class GenerateOtpWithFailureState extends LayoutState{
  String error;
  GenerateOtpWithFailureState({required this.error});
}
//***************************************************************************************************************

class HeightLoadingState extends LayoutState{}
class HeightSuccessState extends LayoutState{}
class HeighWithFailureState extends LayoutState{
  String error;
  HeighWithFailureState({required this.error});
}

//***************************************************************************************************************

class QuotesLoadingState extends LayoutState{}
class QuotesSuccessState extends LayoutState{}
class QuotesWithFailureState extends LayoutState {
  String error;

  QuotesWithFailureState({required this.error});
}

//***************************************************************************************************************

class RecommendedCaloriesLoadingState extends LayoutState{}
class RecommendedCaloriesSuccessState extends LayoutState{}
class RecommendedCaloriesWithFailureState extends LayoutState{
String error;
RecommendedCaloriesWithFailureState({required this.error});
}

//***************************************************************************************************************

class addNodesLoadingState extends LayoutState{}
class addNodesSuccessState extends LayoutState{}
class addNodesWithFailureState extends LayoutState {
  String message;

  addNodesWithFailureState({required this.message});
}
//***************************************************************************************************************

class getNodesLoadingState extends LayoutState{}
class getNodesSuccessState extends LayoutState{}
class getNodesWithFailureState extends LayoutState{
  String message;
getNodesWithFailureState({required this.message});
}

//***************************************************************************************************************

class getDoctorProfileLoadingState extends LayoutState{}
class getDoctorProfileSuccessState extends LayoutState{}
class getDoctorProfileWithFailureState extends LayoutState{
  String message;
getDoctorProfileWithFailureState({required this.message});
}

//***************************************************************************************************************

// class EnterCurrentWeightLoadingState extends LayoutState{}
// class EnterCurrentWeightSuccessState extends LayoutState{}
// class EnterCurrentWeightWithFailureState extends LayoutState{
//   String message;
//   EnterCurrentWeightWithFailureState({required this.message});
// }

//***************************************************************************************************************


class TrackWeightLoadingState extends LayoutState{}
class TrackWeightSuccessState extends LayoutState{}
class TrackWeightWithFailureState extends LayoutState{
  String message;
  TrackWeightWithFailureState({required this.message});
}

//***************************************************************************************************************


class getAllChatViewLoadingState extends LayoutState{}
class getAllChatViewSuccessState extends LayoutState{}
class getAllChatViewWithFailureState extends LayoutState{
  String message;
  getAllChatViewWithFailureState({required this.message});
}

//***************************************************************************************************************
class getAllChatMessageLoadingState extends LayoutState{}
class getAllChatMessageSuccessState extends LayoutState{}
class getAllChatMessageWithFailureState extends LayoutState{
  String message;
  getAllChatMessageWithFailureState({required this.message});
}

//***************************************************************************************************************\
class startNewChatLoadingState extends LayoutState{}
class startNewChatSuccessState extends LayoutState{}
class startNewChatWithFailureState extends LayoutState{
  String message;
  startNewChatWithFailureState({required this.message});
}

//***************************************************************************************************************
