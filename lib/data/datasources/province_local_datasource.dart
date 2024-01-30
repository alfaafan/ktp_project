import 'package:flutter/services.dart';

class ProvinceDatasource {
  Future<String> getProvince() async {
    return await rootBundle.loadString('provinces.json');
  }
}
