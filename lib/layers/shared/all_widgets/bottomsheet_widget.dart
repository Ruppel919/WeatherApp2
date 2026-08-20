import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/weather_model.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/widgets/weather_per_day_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/widgets/weather_per_hour_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/hbox_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/wbox_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/utils/context_extension.dart';

class BottomWeatherSheet extends StatelessWidget {
  final WeatherModel weather;
  const BottomWeatherSheet({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .5,
      minChildSize: .475,
      maxChildSize: .75,

      builder: (context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),

          child: ListView(
            controller: scrollController,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        HboxWidget(height: 25),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: WeatherPerHourWidget(
                            icon: getWeatherIcon(
                              weather.hourly.temperature2m[index],
                            ),
                            time: formatTime(weather.hourly.time[index]),
                            temperature:
                                ' ${weather.hourly.temperature2m[index].round()}°C',
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 300,
                width: 100,
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: WeatherPerDayWidget(
                            date: formatDataTime(weather.hourly.time.),
                            temp:
                                ' ${weather.hourly.temperature2m[index].round()}°C',
                            icon: getWeatherIcon(
                              weather.hourly.temperature2m[index],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  IconData getWeatherIcon(double temp) {
    if (temp > 25) {
      return Icons.sunny;
    }
    if (temp > 15) {
      return Icons.cloud;
    }
    if (temp > 5) {
      return Icons.cloud_queue;
    }
    return Icons.ac_unit;
  }

  String formatTime(String time) {
    final hourTime = DateTime.parse(time);

    return '${hourTime.hour.toString().padLeft(2, '0')}:'
        '${hourTime.minute.toString().padLeft(2, '0')}';
  }

  String formatDataTime(String time) {
    final dateDay = DateTime.parse(time);

    return '${dateDay.month.toString().padLeft(2, '0')}/${dateDay.day.toString().padLeft(2, '0')}:';
  }
}
