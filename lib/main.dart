import 'package:flip/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlipApp());
}

class FlipApp extends StatelessWidget {
  const FlipApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flip clone application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ClashDisplay',
      ),
      home: const BottomBarSection(),
    );
  }
}
