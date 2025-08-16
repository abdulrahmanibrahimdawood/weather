import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/utils/constances.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try {
      var response = await dio.get(
        '${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.appKey}',
      );
      print(response);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
      return null;
    }
  }
}
