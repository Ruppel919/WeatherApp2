import 'package:flutter/material.dart';

import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/text/app_text_style.dart';

class TextExtension extends ThemeExtension<TextExtension> {
  const TextExtension({
    this.title1 = AppTextStyle.title1,
    this.title2 = AppTextStyle.title2,
    this.title3 = AppTextStyle.title3,
  });
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;

  @override
  ThemeExtension<TextExtension> copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
  }) {
    return TextExtension(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
    );
  }

  @override
  ThemeExtension<TextExtension> lerp(
    covariant ThemeExtension<TextExtension>? other,
    double t,
  ) {
    if (other is! TextExtension) {
      return this;
    }
    return TextExtension(
      title1: TextStyle.lerp(title1, other.title1, t)!,
      title2: TextStyle.lerp(title2, other.title2, t)!,
      title3: TextStyle.lerp(title3, other.title3, t)!,
    );
  }
}
