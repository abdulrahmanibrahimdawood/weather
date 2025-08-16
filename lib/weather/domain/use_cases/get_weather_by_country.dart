import 'package:weather/weather/domain/entites/weather.dart';
import 'package:weather/weather/domain/repos/weather_repo.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName({required this.repository});

  Future<Weather> execute(String cityName) {
    return repository.getWeatherByCityName(cityName);
  }
}
