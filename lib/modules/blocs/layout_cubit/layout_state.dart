part of 'layout_cubit.dart';

abstract class LayoutState {}

class LayoutInitial extends LayoutState {}

<<<<<<< HEAD
//***************************************************************************************************************

=======
>>>>>>> ff19fd106ba52c73b68b6bdf7dcd8b4ae8368161
class GetUserDataSuccessState extends LayoutState {}

class GetUserDataLoadingState extends LayoutState {}

class FailedToGetUserDataState extends LayoutState {
  String error;
  FailedToGetUserDataState({required this.error});
}

//***************************************************************************************************************

class ChangePasswordLoadingState extends LayoutState{}
class ChangePasswordSuccessState extends LayoutState{}
class ChangePasswordWithFailureState extends LayoutState{
  String error;

  ChangePasswordWithFailureState(this.error);
}