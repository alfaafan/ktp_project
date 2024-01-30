import 'dart:convert';

import 'package:ktp_project/data/datasources/province_local_datasource.dart';
import 'package:ktp_project/domain/entities/province.dart';

class ProvinceRepository {
  final ProvinceDatasource _provinceDatasource = ProvinceDatasource();

  Future<List<Province>> provinceFromJson() async {
    List provincesList = jsonDecode(await _provinceDatasource.getProvince());

    return List<Province>.from(provincesList.map((x) => Province.fromJson(x)));
  }

  String provinceToJson(List<Province> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
