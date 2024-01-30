import 'package:ktp_project/data/models/user_data_model.dart';

class User {
  String name;
  String birthDetails;
  String regency;
  String province;
  String profession;
  String education;

  User({
    required this.name,
    required this.birthDetails,
    required this.regency,
    required this.province,
    required this.profession,
    required this.education,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        birthDetails: json["birth_details"],
        regency: json["regency"],
        province: json["province"],
        profession: json["profession"],
        education: json["education"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "birth_details": birthDetails,
        "regency": regency,
        "province": province,
        "profession": profession,
        "education": education,
      };

  UserDataModel toDataModel() {
    return UserDataModel(
      name: name,
      birthDetails: birthDetails,
      regency: regency,
      province: province,
      profession: profession,
      education: education,
    );
  }
}
