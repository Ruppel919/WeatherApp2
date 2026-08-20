import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/repository/i_weather_repo.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/cubit/weather_state.dart';

@injectable
class WeatherCubit extends Cubit<WeatherState> {
  final IWeatherRepo _iWeatherRepo;

  WeatherCubit(this._iWeatherRepo) : super(WeatherInitial());

  Future<void> loadWeather({
    required double latitude,
    required double longitude,
  }) async {
    emit(WeatherLoadInProgress());
    try {
      final weather = _iWeatherRepo.getWeather(
        latitude: latitude,
        longitude: longitude,
      );
      emit(WeatherLoadSuccess(await weather));
    } catch (e) {
      emit(WeatherLoadFailure(e.toString()));
    }
  }
}
