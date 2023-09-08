part of 'layout_cubit.dart';

@immutable
abstract class LayoutState {}

class LayoutInitial extends LayoutState {}
class GetUserDataSuccessState extends LayoutState {}
class GetUserDataLoadingState extends LayoutState {}
class FailedToGetUserDataState extends LayoutState {
  String error;
  FailedToGetUserDataState({required this.error});
}
