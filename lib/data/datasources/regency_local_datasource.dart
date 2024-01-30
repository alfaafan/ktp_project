import 'package:flutter/services.dart';

class RegencyDatasource {
  Future<String> getRegency() async {
    return await rootBundle.loadString('regencies.json');
  }
}
