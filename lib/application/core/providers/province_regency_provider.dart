import 'package:flutter/foundation.dart';
import 'package:ktp_project/domain/entities/province.dart';
import 'package:ktp_project/domain/entities/regency.dart';
import 'package:ktp_project/domain/usecases/province_usecase.dart';
import 'package:ktp_project/domain/usecases/regency_usecase.dart';

class ProvinceRegencyProvider extends ChangeNotifier {
  List<Province> provinces = [];
  List<Regency> regencies = [];

  final ProvinceUsecase _provinceUsecase;
  final RegencyUsecase _regencyUsecase;

  ProvinceRegencyProvider(
    this._provinceUsecase,
    this._regencyUsecase,
  );

  Future<void> fetchProvinces() async {
    // Implement logic to fetch provinces from your API
    provinces = await _provinceUsecase.getProvince();
    // Update the 'provinces' list
    notifyListeners();
  }

  Future<void> fetchRegencies() async {
    // Implement logic to fetch regencies from your API
    regencies = await _regencyUsecase.getRegency();
    // Update the 'regencies' list
    notifyListeners();
  }
}
