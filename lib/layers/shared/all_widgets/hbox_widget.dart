import 'package:flutter/material.dart';

class HboxWidget extends StatelessWidget {
  const HboxWidget({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
