import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/colors/app_colors.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/utils/context_extension.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
    required this.icon,
    required this.weatherText,
    required this.weatherProcent,
  });
  final IconData icon;
  final String weatherText;
  final String weatherProcent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: context.colors.transitionBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: context.colors.white, size: 36),
            // HboxWidget(height: 25),
            Spacer(),
            Text(
              weatherText,
              //title3
              style: context.styles.title3.copyWith(
                color: context.colors.white,
              ),
            ),
            Text(
              weatherProcent,
              style: context.styles.title1.copyWith(
                color: context.colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
