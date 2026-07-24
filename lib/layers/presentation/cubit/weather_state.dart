import 'package:equatable/equatable.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/weather_model.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();
  @override
  List<Object?> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoadInProgress extends WeatherState {}

final class WeatherLoadSuccess extends WeatherState {
  const WeatherLoadSuccess(Future<WeatherModel> weather);
}

final class WeatherLoadFailure extends WeatherState {
  @override
  List<Object?> get props => [message];

  final String message;

  const WeatherLoadFailure(this.message);
}
