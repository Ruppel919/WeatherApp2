import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/pages/weather_page.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/app_theme.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/colors/colors_extension.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      home: const WeatherPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
