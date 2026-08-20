import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/hbox_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/utils/context_extension.dart';

class WeatherPerHourWidget extends StatelessWidget {
  final IconData icon;
  final String time;
  final String temperature;
  const WeatherPerHourWidget({
    super.key,
    required this.icon,
    required this.time,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          begin: AlignmentGeometry.bottomStart,
          colors: [context.colors.fancyBlue, Colors.white],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              color: context.colors.transitionBlue,
              borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(time, style: context.styles.title1),
            ),
          ),
          HboxWidget(height: 10),
          Icon(icon, color: context.colors.fancyBlue, size: 35),
          HboxWidget(height: 10),
          Text(
            temperature,
            style: context.styles.title1.copyWith(
              color: context.colors.transitionBlue,
            ),
          ),
        ],
      ),
    );
  }
}
