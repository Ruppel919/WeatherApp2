import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/app.dart';
import 'package:prosto_tipo_testovui_projekt/layers/config/di/dependency_injection.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
