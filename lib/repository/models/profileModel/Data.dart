import 'PermanentAddress.dart';
import 'ResidentialAddress.dart';

/// code : "ST002"
/// first_name : "SARASWATH"
/// last_name : null
/// user_name : "SARASWATH "
/// mother_tongue : "Tamil"
/// dob : "01-04-1991"
/// doj : "02-06-2014"
/// gender : "Female"
/// email : null
/// phone : "8778394128"
/// blood_group : null
/// religion : null
/// caste : null
/// subcaste : null
/// marital_status : "Married"
/// marital_status_id : 2
/// job_type : null
/// nationality : "Indian"
/// salarytype : null
/// designation : null
/// qualification : null
/// experiences : null
/// whatsapp_no : null
/// land_line_no : null
/// photo : "https://test.schoolec.in/storage/images/staff/teaching_staff/4Mpdfz7ki8NQj3wEsoDElzr4WkQZ28uwrMIQiOBI.jpeg"
/// permanent_address : {"address":"PAPPAMBADI per","city":null,"country":"India","state":"Tamil Nadu","country_id":1,"state_id":35,"pin_code":null}
/// residential_address : {"address":"PAPPAMBADI 123","city":null,"country":"India","state":"Nagaland","country_id":1,"state_id":29,"pin_code":null}
/// passport_detail : []
/// bus_detail : []
/// bank_detail : []

class Data {
  Data({
      String? code, 
      String? firstName, 
      dynamic lastName, 
      String? userName, 
      String? motherTongue, 
      String? dob, 
      String? doj, 
      String? gender, 
      dynamic email, 
      String? phone, 
      dynamic bloodGroup, 
      dynamic religion, 
      dynamic caste, 
      dynamic subcaste, 
      String? maritalStatus, 
      num? maritalStatusId, 
      dynamic jobType, 
      String? nationality, 
      dynamic salarytype, 
      dynamic designation, 
      dynamic qualification, 
      dynamic experiences, 
      dynamic whatsappNo, 
      dynamic landLineNo, 
      String? photo, 
      PermanentAddress? permanentAddress, 
      ResidentialAddress? residentialAddress, 
      List<dynamic>? passportDetail, 
      List<dynamic>? busDetail, 
      List<dynamic>? bankDetail,}){
    _code = code;
    _firstName = firstName;
    _lastName = lastName;
    _userName = userName;
    _motherTongue = motherTongue;
    _dob = dob;
    _doj = doj;
    _gender = gender;
    _email = email;
    _phone = phone;
    _bloodGroup = bloodGroup;
    _religion = religion;
    _caste = caste;
    _subcaste = subcaste;
    _maritalStatus = maritalStatus;
    _maritalStatusId = maritalStatusId;
    _jobType = jobType;
    _nationality = nationality;
    _salarytype = salarytype;
    _designation = designation;
    _qualification = qualification;
    _experiences = experiences;
    _whatsappNo = whatsappNo;
    _landLineNo = landLineNo;
    _photo = photo;
    _permanentAddress = permanentAddress;
    _residentialAddress = residentialAddress;
    _passportDetail = passportDetail;
    _busDetail = busDetail;
    _bankDetail = bankDetail;
}

  Data.fromJson(dynamic json) {
    _code = json['code'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _userName = json['user_name'];
    _motherTongue = json['mother_tongue'];
    _dob = json['dob'];
    _doj = json['doj'];
    _gender = json['gender'];
    _email = json['email'];
    _phone = json['phone'];
    _bloodGroup = json['blood_group'];
    _religion = json['religion'];
    _caste = json['caste'];
    _subcaste = json['subcaste'];
    _maritalStatus = json['marital_status'];
    _maritalStatusId = json['marital_status_id'];
    _jobType = json['job_type'];
    _nationality = json['nationality'];
    _salarytype = json['salarytype'];
    _designation = json['designation'];
    _qualification = json['qualification'];
    _experiences = json['experiences'];
    _whatsappNo = json['whatsapp_no'];
    _landLineNo = json['land_line_no'];
    _photo = json['photo'];
    _permanentAddress = json['permanent_address'] != null ? PermanentAddress.fromJson(json['permanent_address']) : null;
    _residentialAddress = json['residential_address'] != null ? ResidentialAddress.fromJson(json['residential_address']) : null;
    if (json['passport_detail'] != null) {
      _passportDetail = [];
      json['passport_detail'].forEach((v) {
        _passportDetail?.add(v);
      });
    }
    if (json['bus_detail'] != null) {
      _busDetail = [];
      json['bus_detail'].forEach((v) {
        _busDetail?.add(v);
      });
    }
    if (json['bank_detail'] != null) {
      _bankDetail = [];
      json['bank_detail'].forEach((v) {
        _bankDetail?.add(v);
      });
    }
  }
  String? _code;
  String? _firstName;
  dynamic _lastName;
  String? _userName;
  String? _motherTongue;
  String? _dob;
  String? _doj;
  String? _gender;
  dynamic _email;
  String? _phone;
  dynamic _bloodGroup;
  dynamic _religion;
  dynamic _caste;
  dynamic _subcaste;
  String? _maritalStatus;
  num? _maritalStatusId;
  dynamic _jobType;
  String? _nationality;
  dynamic _salarytype;
  dynamic _designation;
  dynamic _qualification;
  dynamic _experiences;
  dynamic _whatsappNo;
  dynamic _landLineNo;
  String? _photo;
  PermanentAddress? _permanentAddress;
  ResidentialAddress? _residentialAddress;
  List<dynamic>? _passportDetail;
  List<dynamic>? _busDetail;
  List<dynamic>? _bankDetail;
Data copyWith({  String? code,
  String? firstName,
  dynamic lastName,
  String? userName,
  String? motherTongue,
  String? dob,
  String? doj,
  String? gender,
  dynamic email,
  String? phone,
  dynamic bloodGroup,
  dynamic religion,
  dynamic caste,
  dynamic subcaste,
  String? maritalStatus,
  num? maritalStatusId,
  dynamic jobType,
  String? nationality,
  dynamic salarytype,
  dynamic designation,
  dynamic qualification,
  dynamic experiences,
  dynamic whatsappNo,
  dynamic landLineNo,
  String? photo,
  PermanentAddress? permanentAddress,
  ResidentialAddress? residentialAddress,
  List<dynamic>? passportDetail,
  List<dynamic>? busDetail,
  List<dynamic>? bankDetail,
}) => Data(  code: code ?? _code,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  userName: userName ?? _userName,
  motherTongue: motherTongue ?? _motherTongue,
  dob: dob ?? _dob,
  doj: doj ?? _doj,
  gender: gender ?? _gender,
  email: email ?? _email,
  phone: phone ?? _phone,
  bloodGroup: bloodGroup ?? _bloodGroup,
  religion: religion ?? _religion,
  caste: caste ?? _caste,
  subcaste: subcaste ?? _subcaste,
  maritalStatus: maritalStatus ?? _maritalStatus,
  maritalStatusId: maritalStatusId ?? _maritalStatusId,
  jobType: jobType ?? _jobType,
  nationality: nationality ?? _nationality,
  salarytype: salarytype ?? _salarytype,
  designation: designation ?? _designation,
  qualification: qualification ?? _qualification,
  experiences: experiences ?? _experiences,
  whatsappNo: whatsappNo ?? _whatsappNo,
  landLineNo: landLineNo ?? _landLineNo,
  photo: photo ?? _photo,
  permanentAddress: permanentAddress ?? _permanentAddress,
  residentialAddress: residentialAddress ?? _residentialAddress,
  passportDetail: passportDetail ?? _passportDetail,
  busDetail: busDetail ?? _busDetail,
  bankDetail: bankDetail ?? _bankDetail,
);
  String? get code => _code;
  String? get firstName => _firstName;
  dynamic get lastName => _lastName;
  String? get userName => _userName;
  String? get motherTongue => _motherTongue;
  String? get dob => _dob;
  String? get doj => _doj;
  String? get gender => _gender;
  dynamic get email => _email;
  String? get phone => _phone;
  dynamic get bloodGroup => _bloodGroup;
  dynamic get religion => _religion;
  dynamic get caste => _caste;
  dynamic get subcaste => _subcaste;
  String? get maritalStatus => _maritalStatus;
  num? get maritalStatusId => _maritalStatusId;
  dynamic get jobType => _jobType;
  String? get nationality => _nationality;
  dynamic get salarytype => _salarytype;
  dynamic get designation => _designation;
  dynamic get qualification => _qualification;
  dynamic get experiences => _experiences;
  dynamic get whatsappNo => _whatsappNo;
  dynamic get landLineNo => _landLineNo;
  String? get photo => _photo;
  PermanentAddress? get permanentAddress => _permanentAddress;
  ResidentialAddress? get residentialAddress => _residentialAddress;
  List<dynamic>? get passportDetail => _passportDetail;
  List<dynamic>? get busDetail => _busDetail;
  List<dynamic>? get bankDetail => _bankDetail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['user_name'] = _userName;
    map['mother_tongue'] = _motherTongue;
    map['dob'] = _dob;
    map['doj'] = _doj;
    map['gender'] = _gender;
    map['email'] = _email;
    map['phone'] = _phone;
    map['blood_group'] = _bloodGroup;
    map['religion'] = _religion;
    map['caste'] = _caste;
    map['subcaste'] = _subcaste;
    map['marital_status'] = _maritalStatus;
    map['marital_status_id'] = _maritalStatusId;
    map['job_type'] = _jobType;
    map['nationality'] = _nationality;
    map['salarytype'] = _salarytype;
    map['designation'] = _designation;
    map['qualification'] = _qualification;
    map['experiences'] = _experiences;
    map['whatsapp_no'] = _whatsappNo;
    map['land_line_no'] = _landLineNo;
    map['photo'] = _photo;
    if (_permanentAddress != null) {
      map['permanent_address'] = _permanentAddress?.toJson();
    }
    if (_residentialAddress != null) {
      map['residential_address'] = _residentialAddress?.toJson();
    }
    if (_passportDetail != null) {
      map['passport_detail'] = _passportDetail?.map((v) => v.toJson()).toList();
    }
    if (_busDetail != null) {
      map['bus_detail'] = _busDetail?.map((v) => v.toJson()).toList();
    }
    if (_bankDetail != null) {
      map['bank_detail'] = _bankDetail?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}