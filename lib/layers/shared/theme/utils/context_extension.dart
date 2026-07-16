import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/colors/colors_extension.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/text/text_extension.dart';

extension ContextExtension on BuildContext {
  ColorsExtension get colors {
    return Theme.of(this).extension<ColorsExtension>() ??
        const ColorsExtension();
  }

  TextExtension get styles {
    return Theme.of(this).extension<TextExtension>() ?? const TextExtension();
  }
}
