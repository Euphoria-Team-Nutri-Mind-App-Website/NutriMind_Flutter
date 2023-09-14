part of 'doctor_auth_cubit.dart';

@immutable
abstract class DoctorAuthState {}

class DoctorAuthInitial extends DoctorAuthState {}

class DoctorLoginLoadingState extends DoctorAuthState {}
class DoctorLoginSuccessState extends DoctorAuthState {}
class DoctorLoginFailedState extends DoctorAuthState {
  String message;
  DoctorLoginFailedState({required this.message});
}

//***************************************************************************************************************
class DoctorRegisterLoadingState extends DoctorAuthState {}
class DoctorRegisterSuccessState extends DoctorAuthState {}
class DoctorRegisterFailedState extends DoctorAuthState {
  String message;
  DoctorRegisterFailedState({required this.message});
}