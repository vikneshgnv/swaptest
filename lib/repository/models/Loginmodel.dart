import 'Data.dart';

/// status : "success"
/// code : 200
/// data : {"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWYwN2Y4ZDExMTlhNWRmNzIxNGFjYzZlMjk3NTBlOTg0ODc3M2NkZjU4ODdiMTFiY2VlNjUzMDk1ZTMzNTI2NzFhNmZiMTE2ZTQ4MDA4YTIiLCJpYXQiOjE2NjI1NDUxMzksIm5iZiI6MTY2MjU0NTEzOSwiZXhwIjoxNjk0MDgxMTM5LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.mTydCkrPsHbE2ItIOuNt6wlev30cyWAslmzQz2k_muRfPRf6eksTp30Pajf0KmK-GZutEdjnj1VelYiLQUdtoOz0yiRxGBvMvfsNIk8J3EOiOJGfceGA7G_sSmDNJVoYMpwyY1s6oIvaF8k7_8FxYrzfDRYemsE-vMj3Cr3NSR8YlQr7-B3JRDuqgkIAEYGf2o1fuUa1ecbHtonHBtV9yLUzpS-LfLouOManV6vNs4otJ7pml1z0kQ640-PJ9E2eUafd4l6cSg3lm0_jp0fhZEVyEeZ40piva8AYImYmPhlo26CqftMPMj2Fv_yjBWhPtXq6qkvyzYasohIm_QfWVNyUu442uSh4LiXvfenyN-HB8YJgUUfOrIXgxqcsInwDhwK5dpcQ44VxpELhqAw8jf4B6crIfHpTRpbKiRPYoBthCaFCIuoy4SabSrqYQfbqGfX2MHcMFIyng6qHpC5872x6gxXo2Bav_UwT2xLw1aXHVzjmnGZhKGIHYL0yjk5J6YMPgjLd5Y3XrxVZPb-nQusYPPwRN7a2NSwrc_rB5V_KqQe60Wp5Kin4cwYW1FZ_TVSUabzHQrmq0YuD26sZoqdTEGXWFxLxJBpcqYQWoJ1O-9eqlRJ9F8o-ElKt2yP7k4bwoIn7tfAvYaTIgToyoSHSo3yYVRUmfTpgnhw1vtk","id":2,"uuid":"2a418d00-4ad2-495f-9005-abd52ee21897","code":"ST002","email":null,"username":"SARASWATH ","phone":"8778394128","photo":"https://test.schoolec.in/storage/images/staff/teaching_staff/4Mpdfz7ki8NQj3wEsoDElzr4WkQZ28uwrMIQiOBI.jpeg","token_type":"Bearer","message":"Login Successfully!!!","expires_at":"2023-09-07 15:35:39","academic_id":4,"settings":{"staff_homework_approval_type":1,"class_teacher_homework_approval_type":1,"staff_class_test_approval_type":1,"class_class_test_approval_type":1,"payroll_menu_type":1}}

class Loginmodel {
  Loginmodel({
      String? status, 
      num? code, 
      Data? data,}){
    _status = status;
    _code = code;
    _data = data;
}

  Loginmodel.fromJson(dynamic json) {
    _status = json['status'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  num? _code;
  Data? _data;
Loginmodel copyWith({  String? status,
  num? code,
  Data? data,
}) => Loginmodel(  status: status ?? _status,
  code: code ?? _code,
  data: data ?? _data,
);
  String? get status => _status;
  num? get code => _code;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}