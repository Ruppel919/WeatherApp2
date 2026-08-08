import 'package:injectable/injectable.dart';
import 'package:prosto_tipo_testovui_projekt/layers/data/source/api/dio/dio_constans.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/weather_model.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/interceptors/dio_client.dart';

@lazySingleton
class WeatherDataSource {
  final DioClient _client;

  const WeatherDataSource(this._client);

  Future<WeatherModel> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        DioConstans.weatherEndpoints.weatherEndpoint,
        queryParameters: {
          'latitude': latitude,
          'longitude': longitude,
          'hourly': 'temperature_2m',
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return WeatherModel.fromJson(data);
    } catch (e) {
      throw Exception();
    }
  }
}
