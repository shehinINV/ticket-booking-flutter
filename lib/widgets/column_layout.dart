import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const ColumnLayout(
      {super.key, required this.firstText, required this.secondText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3.copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
