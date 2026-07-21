import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/weather_model.dart';

abstract class IWeatherRepo {
  Future<WeatherModel> getWeather({
    required double latitude,
    required double longitude,
  });
}
