/// address : "PAPPAMBADI per"
/// city : null
/// country : "India"
/// state : "Tamil Nadu"
/// country_id : 1
/// state_id : 35
/// pin_code : null

class PermanentAddress {
  PermanentAddress({
      String? address, 
      dynamic city, 
      String? country, 
      String? state, 
      num? countryId, 
      num? stateId, 
      dynamic pinCode,}){
    _address = address;
    _city = city;
    _country = country;
    _state = state;
    _countryId = countryId;
    _stateId = stateId;
    _pinCode = pinCode;
}

  PermanentAddress.fromJson(dynamic json) {
    _address = json['address'];
    _city = json['city'];
    _country = json['country'];
    _state = json['state'];
    _countryId = json['country_id'];
    _stateId = json['state_id'];
    _pinCode = json['pin_code'];
  }
  String? _address;
  dynamic _city;
  String? _country;
  String? _state;
  num? _countryId;
  num? _stateId;
  dynamic _pinCode;
PermanentAddress copyWith({  String? address,
  dynamic city,
  String? country,
  String? state,
  num? countryId,
  num? stateId,
  dynamic pinCode,
}) => PermanentAddress(  address: address ?? _address,
  city: city ?? _city,
  country: country ?? _country,
  state: state ?? _state,
  countryId: countryId ?? _countryId,
  stateId: stateId ?? _stateId,
  pinCode: pinCode ?? _pinCode,
);
  String? get address => _address;
  dynamic get city => _city;
  String? get country => _country;
  String? get state => _state;
  num? get countryId => _countryId;
  num? get stateId => _stateId;
  dynamic get pinCode => _pinCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    map['city'] = _city;
    map['country'] = _country;
    map['state'] = _state;
    map['country_id'] = _countryId;
    map['state_id'] = _stateId;
    map['pin_code'] = _pinCode;
    return map;
  }

}