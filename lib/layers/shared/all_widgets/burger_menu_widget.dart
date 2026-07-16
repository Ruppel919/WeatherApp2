import 'package:flutter/material.dart';

class BurgerMenuWidget extends StatelessWidget {
  const BurgerMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Icon(Icons.menu, color: Colors.white, size: 36),
      ),
    );
  }
}
