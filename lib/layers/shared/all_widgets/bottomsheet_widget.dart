import 'package:flutter/material.dart';

Widget bottomWeatherSheet() {
  return DraggableScrollableSheet(
    initialChildSize: .5,
    minChildSize: .475,
    maxChildSize: .75,

    builder: (context, ScrollController scrollController) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
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
