import 'Data.dart';

/// status : "success"
/// code : 200
/// data : {"code":"ST002","first_name":"SARASWATH","last_name":null,"user_name":"SARASWATH ","mother_tongue":"Tamil","dob":"01-04-1991","doj":"02-06-2014","gender":"Female","email":null,"phone":"8778394128","blood_group":null,"religion":null,"caste":null,"subcaste":null,"marital_status":"Married","marital_status_id":2,"job_type":null,"nationality":"Indian","salarytype":null,"designation":null,"qualification":null,"experiences":null,"whatsapp_no":null,"land_line_no":null,"photo":"https://test.schoolec.in/storage/images/staff/teaching_staff/4Mpdfz7ki8NQj3wEsoDElzr4WkQZ28uwrMIQiOBI.jpeg","permanent_address":{"address":"PAPPAMBADI per","city":null,"country":"India","state":"Tamil Nadu","country_id":1,"state_id":35,"pin_code":null},"residential_address":{"address":"PAPPAMBADI 123","city":null,"country":"India","state":"Nagaland","country_id":1,"state_id":29,"pin_code":null},"passport_detail":[],"bus_detail":[],"bank_detail":[]}

class ProfileModel {
  ProfileModel({
      String? status, 
      num? code, 
      Data? data,}){
    _status = status;
    _code = code;
    _data = data;
}

  ProfileModel.fromJson(dynamic json) {
    _status = json['status'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  num? _code;
  Data? _data;
ProfileModel copyWith({  String? status,
  num? code,
  Data? data,
}) => ProfileModel(  status: status ?? _status,
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