import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swap_tech_test/repository/api/ApiClient.dart';
import 'package:swap_tech_test/repository/models/profileModel/ProfileModel.dart';

class ProfileApi {
  ApiClient _apiClient = new ApiClient();
  String _profilePath = '/profile';
  String? token;
getToken()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();

 token = await prefs.get('token').toString();

}

  Future<ProfileModel> fetchProfile() async {
    await getToken();
    Response response =
    await _apiClient.invokeAPI(_profilePath, 'GET', null,token.toString());

    return ProfileModel.fromJson(jsonDecode(response.body));

  }
}