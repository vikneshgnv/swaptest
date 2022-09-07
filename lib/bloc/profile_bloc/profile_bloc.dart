import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:swap_tech_test/repository/api/profile_api.dart';
import 'package:swap_tech_test/repository/models/profileModel/ProfileModel.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileModel? profileModel;
  ProfileApi profileApi = ProfileApi();

  ProfileBloc() : super(ProfileInitial()) {
    on<GetProfile>((event, emit) => fetchProfile(event, emit));
      // TODO: implement event handler

  }

  void fetchProfile(ProfileEvent event,Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
      profileModel = await profileApi.fetchProfile();

      emit(ProfileLoaded());
    } catch (e) {
      emit(ProfileError());
      print("error in login>>>>>>>" + e.toString());
    }
  }
}
