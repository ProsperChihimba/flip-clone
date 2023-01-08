import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/card.png',
              width: AppLayout.getWidth(220),
            ),
          ),
          Gap(AppLayout.getHeight(30)),

          // header
          Text(
            "Virtual Cards",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: AppLayout.getHeight(17),
            ),
          ),

          // Desc one
          Gap(AppLayout.getHeight(10)),
          Text(
            "Pay for anything, anywhere",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: AppLayout.getHeight(11.5),
            ),
          ),

          // button
        ],
      ),
    );
  }
}
