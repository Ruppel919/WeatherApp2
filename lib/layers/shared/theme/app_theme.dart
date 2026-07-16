import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/colors/app_colors.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/colors/colors_extension.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/text/text_extension.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.fancyBlue,
    extensions: const [ColorsExtension(), TextExtension()],
  );
}
