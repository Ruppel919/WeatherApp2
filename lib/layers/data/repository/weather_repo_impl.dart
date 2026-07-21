import 'package:injectable/injectable.dart';
import 'package:prosto_tipo_testovui_projekt/layers/data/source/api/weather/weather_data_source.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/weather_model.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/repository/i_weather_repo.dart';

@LazySingleton(as: IWeatherRepo)
class WeatherRepoImpl implements IWeatherRepo {
  final WeatherDataSource _weatherDataSource;

  WeatherRepoImpl(this._weatherDataSource);

  @override
  Future<WeatherModel> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final model = await _weatherDataSource.getWeather(
      latitude: latitude,
      longitude: longitude,
    );
    return model;
  }
}
