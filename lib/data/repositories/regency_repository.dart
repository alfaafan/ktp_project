import 'dart:convert';

import 'package:ktp_project/data/datasources/regency_local_datasource.dart';
import 'package:ktp_project/domain/entities/regency.dart';

class RegencyRepository {
  final RegencyDatasource _regencyDatasource = RegencyDatasource();

  Future<List<Regency>> getRegency() async {
    var regenciesList = jsonDecode(await _regencyDatasource.getRegency());

    List<Regency> regencies =
        List<Regency>.from(regenciesList.map((x) => Regency.fromJson(x)));

    return regencies;
  }
}
