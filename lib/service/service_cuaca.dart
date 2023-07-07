import 'package:flutter/foundation.dart';
import 'package:uas_rifal/model/model_cuaca.dart';
import 'package:dio/dio.dart';

class ServiceCuaca {

  final dio = Dio();

  Future<ModelCuaca> getCurrentWeather(String cityName) async {
    // HTTP Request
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=538e0dc9046c723a31ed6ed1baa5689b&units=metric');
    if (kDebugMode) {
      print(response.requestOptions.path);
    }
    // Convert
    return ModelCuaca.fromJson(response.data);
  }
}
