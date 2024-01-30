import 'package:hive/hive.dart';
import 'package:ktp_project/data/models/user_data_model.dart';
import 'package:ktp_project/domain/entities/user.dart';

class UserRepository {
  final Box<UserDataModel> _userDataBox;

  UserRepository(this._userDataBox);

  Future<void> saveUserData(User user) async {
    await _userDataBox.put('userKey', user.toDataModel());
  }
}
