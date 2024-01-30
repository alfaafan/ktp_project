import 'package:flutter/material.dart';
import 'package:ktp_project/domain/entities/province.dart';
import 'package:ktp_project/domain/entities/regency.dart';

class DropdownModel extends ChangeNotifier {
  List<Province> _provinces = [];
  List<Regency> _regencies = [];
  Province? _selectedProvince;
  Regency? _selectedRegency;

  List<Province> get provinces => _provinces;
  List<Regency> get regencies => _regencies;
  Province? get selectedProvince => _selectedProvince;
  Regency? get selectedRegency => _selectedRegency;

  void updateProvince(List<Province> provinces) {
    _provinces = provinces;
    notifyListeners();
  }

  void updateRegency(List<Regency> regencies) {
    _regencies = regencies;
    notifyListeners();
  }

  void updateSelectedProvince(String newProvinceId) {
    _selectedProvince = _provinces.firstWhere(
        (province) => province.id == newProvinceId,
        orElse: () => _provinces.first);
    notifyListeners();
  }

  void updateSelectedRegency(String newRegencyId) {
    _selectedRegency = _regencies.firstWhere(
        (regency) => regency.id == newRegencyId,
        orElse: () => _regencies.first);
    notifyListeners();
  }
}
