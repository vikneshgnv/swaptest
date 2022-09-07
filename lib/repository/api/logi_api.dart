import 'dart:convert';

import 'package:http/http.dart';
import 'package:swap_tech_test/repository/models/Loginmodel.dart';


import 'ApiClient.dart';

class LoginApi{
  ApiClient _apiClient = new ApiClient();
  String _loginPath = '/login';


  Future<Loginmodel> login(String code,String password) async {
    String CredentialPath = "?code=$code&password=$password";

    Response response =
    await _apiClient.invokeAPI(_loginPath+CredentialPath, 'POST_', null,"");

    return Loginmodel.fromJson(jsonDecode(response.body));

  }
}