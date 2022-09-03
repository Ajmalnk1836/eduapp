import 'package:json_annotation/json_annotation.dart';

part 'signupmodel.g.dart';

@JsonSerializable()
class Signupmodel {
	@JsonKey(name: 'FirstName') 
	String? firstName;
	@JsonKey(name: 'LastName') 
	String? lastName;
	@JsonKey(name: 'Mobile_No') 
	String? mobileNo;
	@JsonKey(name: 'Email') 
	String? email;
	@JsonKey(name: 'UserType') 
	int? userType;
	@JsonKey(name: 'Password') 
	String? password;
	@JsonKey(name: 'JoiningDate') 
	String? joiningDate;

	Signupmodel({
		this.firstName, 
		this.lastName, 
		this.mobileNo, 
		this.email, 
		this.userType, 
		this.password, 
		this.joiningDate, 
	});

	factory Signupmodel.fromJson(Map<String, dynamic> json) {
		return _$SignupmodelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SignupmodelToJson(this);
}
