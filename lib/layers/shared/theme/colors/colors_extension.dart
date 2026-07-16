import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/colors/app_colors.dart';

class ColorsExtension extends ThemeExtension<ColorsExtension> {
  const ColorsExtension({
    this.fancyBlue = AppColors.fancyBlue,
    this.dailyBlue = AppColors.dailyBlue,
    this.transitionBlue = AppColors.transitionBlue,
    this.darkBlue = AppColors.darkBlue,
    this.white = AppColors.white,
  });
  final Color fancyBlue;
  final Color dailyBlue;
  final Color transitionBlue;
  final Color darkBlue;
  final Color white;

  @override
  ThemeExtension<ColorsExtension> copyWith({
    Color? fancyBlue,
    Color? dailyBlue,
    Color? transitionBlue,
    Color? darkBlue,
    Color? white,
  }) {
    return ColorsExtension(
      fancyBlue: fancyBlue ?? this.fancyBlue,
      dailyBlue: dailyBlue ?? this.dailyBlue,
      transitionBlue: transitionBlue ?? this.transitionBlue,
      darkBlue: darkBlue ?? this.darkBlue,
      white: white ?? this.white,
    );
  }

  @override
  ThemeExtension<ColorsExtension> lerp(
    covariant ThemeExtension<ColorsExtension>? other,
    double t,
  ) {
    if (other is! ColorsExtension) {
      return this;
    }
    return ColorsExtension(
      fancyBlue: Color.lerp(fancyBlue, other.fancyBlue, t)!,
      dailyBlue: Color.lerp(dailyBlue, other.dailyBlue, t)!,
      transitionBlue: Color.lerp(transitionBlue, other.transitionBlue, t)!,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}
