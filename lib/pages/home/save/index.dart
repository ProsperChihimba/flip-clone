import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment(0.9, -0.4),
          colors: [
            Color.fromARGB(255, 161, 193, 248),
            Color.fromARGB(255, 247, 210, 248),
            Colors.white,
          ],
        ),
      ),

      // body
      child: ListView(
        children: [
          Gap(AppLayout.getHeight(35)),

          // Header image
          Image(
            image: const AssetImage("assets/card.png"),
            height: AppLayout.getHeight(180),
            width: AppLayout.getWidth(180),
          ),

          //
        ],
      ),
    );
  }
}
