import 'package:flip/pages/parts/balance.dart';
import 'package:flip/pages/parts/header.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WalletsPage extends StatefulWidget {
  const WalletsPage({super.key});

  @override
  State<WalletsPage> createState() => _WalletsPageState();
}

class _WalletsPageState extends State<WalletsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment(1.0, 0.0),
          colors: [
            Color(0xFFa8ff79),
            Colors.white,
          ],
        ),
      ),
      child: ListView(
        children: [
          Gap(AppLayout.getHeight(20)),
          const HomeHeader(),
          Gap(AppLayout.getHeight(20)),
          const BalanceSection()
        ],
      ),
    );
  }
}
