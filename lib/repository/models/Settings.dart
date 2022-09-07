/// staff_homework_approval_type : 1
/// class_teacher_homework_approval_type : 1
/// staff_class_test_approval_type : 1
/// class_class_test_approval_type : 1
/// payroll_menu_type : 1

class Settings {
  Settings({
      num? staffHomeworkApprovalType, 
      num? classTeacherHomeworkApprovalType, 
      num? staffClassTestApprovalType, 
      num? classClassTestApprovalType, 
      num? payrollMenuType,}){
    _staffHomeworkApprovalType = staffHomeworkApprovalType;
    _classTeacherHomeworkApprovalType = classTeacherHomeworkApprovalType;
    _staffClassTestApprovalType = staffClassTestApprovalType;
    _classClassTestApprovalType = classClassTestApprovalType;
    _payrollMenuType = payrollMenuType;
}

  Settings.fromJson(dynamic json) {
    _staffHomeworkApprovalType = json['staff_homework_approval_type'];
    _classTeacherHomeworkApprovalType = json['class_teacher_homework_approval_type'];
    _staffClassTestApprovalType = json['staff_class_test_approval_type'];
    _classClassTestApprovalType = json['class_class_test_approval_type'];
    _payrollMenuType = json['payroll_menu_type'];
  }
  num? _staffHomeworkApprovalType;
  num? _classTeacherHomeworkApprovalType;
  num? _staffClassTestApprovalType;
  num? _classClassTestApprovalType;
  num? _payrollMenuType;
Settings copyWith({  num? staffHomeworkApprovalType,
  num? classTeacherHomeworkApprovalType,
  num? staffClassTestApprovalType,
  num? classClassTestApprovalType,
  num? payrollMenuType,
}) => Settings(  staffHomeworkApprovalType: staffHomeworkApprovalType ?? _staffHomeworkApprovalType,
  classTeacherHomeworkApprovalType: classTeacherHomeworkApprovalType ?? _classTeacherHomeworkApprovalType,
  staffClassTestApprovalType: staffClassTestApprovalType ?? _staffClassTestApprovalType,
  classClassTestApprovalType: classClassTestApprovalType ?? _classClassTestApprovalType,
  payrollMenuType: payrollMenuType ?? _payrollMenuType,
);
  num? get staffHomeworkApprovalType => _staffHomeworkApprovalType;
  num? get classTeacherHomeworkApprovalType => _classTeacherHomeworkApprovalType;
  num? get staffClassTestApprovalType => _staffClassTestApprovalType;
  num? get classClassTestApprovalType => _classClassTestApprovalType;
  num? get payrollMenuType => _payrollMenuType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['staff_homework_approval_type'] = _staffHomeworkApprovalType;
    map['class_teacher_homework_approval_type'] = _classTeacherHomeworkApprovalType;
    map['staff_class_test_approval_type'] = _staffClassTestApprovalType;
    map['class_class_test_approval_type'] = _classClassTestApprovalType;
    map['payroll_menu_type'] = _payrollMenuType;
    return map;
  }

}