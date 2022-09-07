import 'Settings.dart';

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWYwN2Y4ZDExMTlhNWRmNzIxNGFjYzZlMjk3NTBlOTg0ODc3M2NkZjU4ODdiMTFiY2VlNjUzMDk1ZTMzNTI2NzFhNmZiMTE2ZTQ4MDA4YTIiLCJpYXQiOjE2NjI1NDUxMzksIm5iZiI6MTY2MjU0NTEzOSwiZXhwIjoxNjk0MDgxMTM5LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.mTydCkrPsHbE2ItIOuNt6wlev30cyWAslmzQz2k_muRfPRf6eksTp30Pajf0KmK-GZutEdjnj1VelYiLQUdtoOz0yiRxGBvMvfsNIk8J3EOiOJGfceGA7G_sSmDNJVoYMpwyY1s6oIvaF8k7_8FxYrzfDRYemsE-vMj3Cr3NSR8YlQr7-B3JRDuqgkIAEYGf2o1fuUa1ecbHtonHBtV9yLUzpS-LfLouOManV6vNs4otJ7pml1z0kQ640-PJ9E2eUafd4l6cSg3lm0_jp0fhZEVyEeZ40piva8AYImYmPhlo26CqftMPMj2Fv_yjBWhPtXq6qkvyzYasohIm_QfWVNyUu442uSh4LiXvfenyN-HB8YJgUUfOrIXgxqcsInwDhwK5dpcQ44VxpELhqAw8jf4B6crIfHpTRpbKiRPYoBthCaFCIuoy4SabSrqYQfbqGfX2MHcMFIyng6qHpC5872x6gxXo2Bav_UwT2xLw1aXHVzjmnGZhKGIHYL0yjk5J6YMPgjLd5Y3XrxVZPb-nQusYPPwRN7a2NSwrc_rB5V_KqQe60Wp5Kin4cwYW1FZ_TVSUabzHQrmq0YuD26sZoqdTEGXWFxLxJBpcqYQWoJ1O-9eqlRJ9F8o-ElKt2yP7k4bwoIn7tfAvYaTIgToyoSHSo3yYVRUmfTpgnhw1vtk"
/// id : 2
/// uuid : "2a418d00-4ad2-495f-9005-abd52ee21897"
/// code : "ST002"
/// email : null
/// username : "SARASWATH "
/// phone : "8778394128"
/// photo : "https://test.schoolec.in/storage/images/staff/teaching_staff/4Mpdfz7ki8NQj3wEsoDElzr4WkQZ28uwrMIQiOBI.jpeg"
/// token_type : "Bearer"
/// message : "Login Successfully!!!"
/// expires_at : "2023-09-07 15:35:39"
/// academic_id : 4
/// settings : {"staff_homework_approval_type":1,"class_teacher_homework_approval_type":1,"staff_class_test_approval_type":1,"class_class_test_approval_type":1,"payroll_menu_type":1}

class Data {
  Data({
      String? token, 
      num? id, 
      String? uuid, 
      String? code, 
      dynamic email, 
      String? username, 
      String? phone, 
      String? photo, 
      String? tokenType, 
      String? message, 
      String? expiresAt, 
      num? academicId, 
      Settings? settings,}){
    _token = token;
    _id = id;
    _uuid = uuid;
    _code = code;
    _email = email;
    _username = username;
    _phone = phone;
    _photo = photo;
    _tokenType = tokenType;
    _message = message;
    _expiresAt = expiresAt;
    _academicId = academicId;
    _settings = settings;
}

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _id = json['id'];
    _uuid = json['uuid'];
    _code = json['code'];
    _email = json['email'];
    _username = json['username'];
    _phone = json['phone'];
    _photo = json['photo'];
    _tokenType = json['token_type'];
    _message = json['message'];
    _expiresAt = json['expires_at'];
    _academicId = json['academic_id'];
    _settings = json['settings'] != null ? Settings.fromJson(json['settings']) : null;
  }
  String? _token;
  num? _id;
  String? _uuid;
  String? _code;
  dynamic _email;
  String? _username;
  String? _phone;
  String? _photo;
  String? _tokenType;
  String? _message;
  String? _expiresAt;
  num? _academicId;
  Settings? _settings;
Data copyWith({  String? token,
  num? id,
  String? uuid,
  String? code,
  dynamic email,
  String? username,
  String? phone,
  String? photo,
  String? tokenType,
  String? message,
  String? expiresAt,
  num? academicId,
  Settings? settings,
}) => Data(  token: token ?? _token,
  id: id ?? _id,
  uuid: uuid ?? _uuid,
  code: code ?? _code,
  email: email ?? _email,
  username: username ?? _username,
  phone: phone ?? _phone,
  photo: photo ?? _photo,
  tokenType: tokenType ?? _tokenType,
  message: message ?? _message,
  expiresAt: expiresAt ?? _expiresAt,
  academicId: academicId ?? _academicId,
  settings: settings ?? _settings,
);
  String? get token => _token;
  num? get id => _id;
  String? get uuid => _uuid;
  String? get code => _code;
  dynamic get email => _email;
  String? get username => _username;
  String? get phone => _phone;
  String? get photo => _photo;
  String? get tokenType => _tokenType;
  String? get message => _message;
  String? get expiresAt => _expiresAt;
  num? get academicId => _academicId;
  Settings? get settings => _settings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['id'] = _id;
    map['uuid'] = _uuid;
    map['code'] = _code;
    map['email'] = _email;
    map['username'] = _username;
    map['phone'] = _phone;
    map['photo'] = _photo;
    map['token_type'] = _tokenType;
    map['message'] = _message;
    map['expires_at'] = _expiresAt;
    map['academic_id'] = _academicId;
    if (_settings != null) {
      map['settings'] = _settings?.toJson();
    }
    return map;
  }

}