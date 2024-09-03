import 'package:flutter/material.dart';
import 'package:ticket_book/screens/bottom_bar.dart';
import 'package:ticket_book/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Tickets',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      home: const BottomBar(title: 'Book Tickets'),
    );
  }
}

