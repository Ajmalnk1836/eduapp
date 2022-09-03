import 'package:json_annotation/json_annotation.dart';

part 'loginmodel.g.dart';

@JsonSerializable()
class Loginmodel {
	@JsonKey(name: 'Email') 
	String? email;
	@JsonKey(name: 'Password') 
	String? password;

	Loginmodel({this.email, this.password});

	factory Loginmodel.fromJson(Map<String, dynamic> json) {
		return _$LoginmodelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LoginmodelToJson(this);
}
