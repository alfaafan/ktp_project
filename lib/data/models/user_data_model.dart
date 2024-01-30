import 'package:hive/hive.dart';

part 'user_data_model.g.dart';

@HiveType(typeId: 0)
class UserDataModel {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String birthDetails;

  @HiveField(2)
  late String regency;

  @HiveField(3)
  late String province;

  @HiveField(4)
  late String profession;

  @HiveField(5)
  late String education;

  UserDataModel({
    required this.name,
    required this.birthDetails,
    required this.regency,
    required this.province,
    required this.profession,
    required this.education,
  });
}
