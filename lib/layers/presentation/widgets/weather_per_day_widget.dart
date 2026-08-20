import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/wbox_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/utils/context_extension.dart';

class WeatherPerDayWidget extends StatelessWidget {
  final String date;
  final String temp;
  final IconData icon;
  const WeatherPerDayWidget({
    super.key,
    required this.date,
    required this.temp,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          date,
          style: context.styles.title1.copyWith(
            color: context.colors.fancyBlue,
          ),
        ),
        WboxWidget(width: 150),
        Icon(icon, color: context.colors.fancyBlue, size: 35),
        Text(
          temp,
          style: context.styles.title1.copyWith(
            color: context.colors.transitionBlue,
          ),
        ),
      ],
    );
  }
}
