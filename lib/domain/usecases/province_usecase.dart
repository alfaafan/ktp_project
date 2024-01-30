import 'package:ktp_project/data/repositories/province_repository.dart';
import 'package:ktp_project/domain/entities/province.dart';

class ProvinceUsecase {
  var repository = ProvinceRepository();

  Future<List<Province>> getProvince() async {
    var provinces = await repository.provinceFromJson();
    return provinces;
  }
}
