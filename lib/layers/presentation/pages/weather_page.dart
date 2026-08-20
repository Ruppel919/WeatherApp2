import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/cubit/weather_cubit.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/cubit/weather_state.dart';

import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/bottomsheet_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/burger_menu_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/hbox_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/all_widgets/wbox_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/presentation/widgets/weather_widget.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/utils/context_extension.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoadSuccess) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topStart,
                colors: [
                  context.colors.fancyBlue,
                  context.colors.transitionBlue,
                ],
              ),
            ),
            child: Scaffold(
              body: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Погода Алматы',
                          //title1
                          style: context.styles.title1.copyWith(
                            color: context.colors.white,
                          ),
                        ),
                      ),

                      HboxWidget(height: 30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${state.weather.hourly.temperature2m.first.round()}°',
                            //title2
                            style: context.styles.title2.copyWith(
                              color: context.colors.white,
                            ),
                          ),
                          WboxWidget(width: 25),
                          Icon(
                            Icons.sunny,
                            color: context.colors.white,
                            size: 100,
                          ),
                        ],
                      ),
                      HboxWidget(height: 25),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            WboxWidget(width: 16),
                            WeatherWidget(
                              icon: Icons.cloud,
                              weatherText: 'Очень облачно',
                              weatherProcent: '55%',
                            ),
                            WboxWidget(width: 10),
                            WeatherWidget(
                              icon: Icons.cloud,
                              weatherText: 'Очень облачно',
                              weatherProcent: '55%',
                            ),
                            WboxWidget(width: 10),
                            WeatherWidget(
                              icon: Icons.cloud,
                              weatherText: 'Очень облачно',
                              weatherProcent: '55%',
                            ),
                            WboxWidget(width: 16),
                          ],
                        ),
                      ),
                    ],
                  ),

                  BottomWeatherSheet(weather: state.weather),
                ],
              ),
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text(
                  formatDataTime(state.weather.hourly.time.first),
                  style: context.styles.title1,
                ),
                actions: <Widget>[BurgerMenuWidget()],
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
            ),
          );
        }
        return SizedBox();
      },
    );
  }

  String formatDataTime(String time) {
    final dateTime = DateTime.parse(time);

    return '${dateTime.year}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.day.toString().padLeft(2, '0')}:';
  }
}
