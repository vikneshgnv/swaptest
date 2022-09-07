part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {}
class LoginLoaded extends LoginState {}
class LoginError extends LoginState {}