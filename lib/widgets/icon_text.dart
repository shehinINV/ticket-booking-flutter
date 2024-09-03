import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
