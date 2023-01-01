import 'package:flip/pages/home/wallet/parts/balance.dart';
import 'package:flip/pages/home/wallet/parts/getstarted_options.dart';
import 'package:flip/pages/home/wallet/parts/header.dart';
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
          Gap(AppLayout.getHeight(30)),
          const HomeHeader(),
          Gap(AppLayout.getHeight(25)),
          const BalanceSection(),
          Gap(AppLayout.getHeight(55)),

          // Getting started text
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(17),
            ),
            child: Text(
              "Get Started 🤌🏿",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(15),
              ),
            ),
          ),

          // get started options
          Gap(AppLayout.getHeight(35)),
          const GetStarted(),

          // Transactions section
          Gap(AppLayout.getHeight(53)),

          Column(
            children: [
              Image(
                image: const AssetImage('assets/transaction.png'),
                height: AppLayout.getHeight(25),
                width: AppLayout.getWidth(25),
              ),
              Gap(AppLayout.getHeight(13)),
              const Text(
                "You have not made any",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Transaction yet",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          Gap(AppLayout.getHeight(40)),
        ],
      ),
    );
  }
}
