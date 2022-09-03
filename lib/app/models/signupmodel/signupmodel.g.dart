// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signupmodel _$SignupmodelFromJson(Map<String, dynamic> json) => Signupmodel(
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      mobileNo: json['Mobile_No'] as String?,
      email: json['Email'] as String?,
      userType: json['UserType'] as int?,
      password: json['Password'] as String?,
      joiningDate: json['JoiningDate'] as String?,
    );

Map<String, dynamic> _$SignupmodelToJson(Signupmodel instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Mobile_No': instance.mobileNo,
      'Email': instance.email,
      'UserType': instance.userType,
      'Password': instance.password,
      'JoiningDate': instance.joiningDate,
    };
