import 'package:flutter/material.dart';
import 'package:prosto_tipo_testovui_projekt/layers/shared/theme/utils/context_extension.dart';

class BottomWeatherSheet extends StatelessWidget {
  const BottomWeatherSheet({super.key});

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
              ListTile(title: Text('name')),
              ListTile(title: Text('name')),
              ListTile(title: Text('name')),
            ],
          ),
        );
      },
    );
  }
}
