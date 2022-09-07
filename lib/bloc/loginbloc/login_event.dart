part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class Login extends LoginEvent {
  String ID;
  String Password;

  Login({required this.ID,required this.Password});
}
