import 'package:weather/weather/data/data_source/remote_data_source.dart';
import 'package:weather/weather/domain/entites/weather.dart';
import 'package:weather/weather/domain/repos/weather_repo.dart';

class WeatherRepository implements BaseWeatherRepository {
  final RemoteDataSource remoteDataSource;

  WeatherRepository({required this.remoteDataSource});
  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await remoteDataSource.getWeatherByCountryName(cityName))!;
  }
}
