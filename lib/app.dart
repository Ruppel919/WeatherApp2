import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prosto_tipo_testovui_projekt/layers/config/di/dependency_injection.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/cubit/weather_cubit.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/pages/weather_page.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<WeatherCubit>()
            ..loadWeather(latitude: 43.2389, longitude: 76.8897),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.light,
        home: const WeatherPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
