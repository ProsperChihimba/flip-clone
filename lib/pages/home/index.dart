import 'package:flip/pages/home/save/index.dart';
import 'package:flip/pages/home/wallet/index.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const [
        WalletsPage(),
        SavePage(),
      ],
    );
  }
}
