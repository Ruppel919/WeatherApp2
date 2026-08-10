// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repository/weather_repo_impl.dart' as _i300;
import '../../data/source/api/weather/weather_data_source.dart' as _i362;
import '../../domain/repository/i_weather_repo.dart' as _i981;
import '../../presentation/cubit/weather_cubit.dart' as _i356;
import '../../shared/interceptors/dio_client.dart' as _i747;
import 'dio_module.dart' as _i1045;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initWeather({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.factory<_i361.Dio>(() => dioModule.dio);
    gh.factory<_i747.DioClient>(() => _i747.DioClient(gh<_i361.Dio>()));
    gh.factory<_i362.WeatherDataSource>(
      () => _i362.WeatherDataSource(gh<_i747.DioClient>()),
    );
    gh.lazySingleton<_i981.IWeatherRepo>(
      () => _i300.WeatherRepoImpl(gh<_i362.WeatherDataSource>()),
    );
    gh.factory<_i356.WeatherCubit>(
      () => _i356.WeatherCubit(
        gh<_i981.IWeatherRepo>(),
        repisitory: gh<_i981.IWeatherRepo>(),
      ),
    );
    return this;
  }
}

class _$DioModule extends _i1045.DioModule {}
