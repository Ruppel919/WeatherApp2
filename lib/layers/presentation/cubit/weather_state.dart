import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/weather_model.dart';

sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoadInProgress extends WeatherState {}

final class WeatherLoadSuccess extends WeatherState {
  WeatherLoadSuccess(Future<WeatherModel> weather);
}

final class WeatherLoadFailure extends WeatherState {
  final String message;

  WeatherLoadFailure(this.message);
}
