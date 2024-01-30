import 'package:ktp_project/data/repositories/regency_repository.dart';
import 'package:ktp_project/domain/entities/regency.dart';

class RegencyUsecase {
  final RegencyRepository _regencyRepository = RegencyRepository();

  Future<List<Regency>> getRegency() async {
    return await _regencyRepository.getRegency();
  }
}
