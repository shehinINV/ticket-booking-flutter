import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool isBlueColor;
  const ThickContainer({super.key, required this.isBlueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        border: Border.all(
          width: 2.5,
          color: isBlueColor ? Colors.blue : Colors.white,
        ),
      ),
    );
  }
}
