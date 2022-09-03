import 'package:json_annotation/json_annotation.dart';

part 'verificationmodel.g.dart';

@JsonSerializable()
class Verificationmodel {
	@JsonKey(name: 'EmailVerificationCode') 
	String? emailVerificationCode;

	Verificationmodel({this.emailVerificationCode});

	factory Verificationmodel.fromJson(Map<String, dynamic> json) {
		return _$VerificationmodelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$VerificationmodelToJson(this);
}
