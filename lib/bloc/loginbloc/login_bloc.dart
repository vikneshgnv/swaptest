import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:swap_tech_test/repository/api/logi_api.dart';
import 'package:swap_tech_test/repository/models/Loginmodel.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginApi loginApi = LoginApi();
  Loginmodel? loginModel;

  LoginBloc() : super(LoginInitial()) {
    on<Login>((event, emit) => login(event, emit, event.ID, event.Password));      // TODO: implement event handler;
  }

  void login(LoginEvent event,Emitter<LoginState> emit,String Id,String password) async {
    emit(LoginLoading());
    try {
    loginModel = await loginApi.login(Id, password) ;
    emit(LoginLoaded());
    } catch (e) {
      emit(LoginError());
      print("error in login>>>>>>>" + e.toString());
    }
  }
}


