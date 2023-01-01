import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SavingsProfit extends StatelessWidget {
  const SavingsProfit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(18),
      ),
      child: Column(
        children: [
          const Profits(
            description: "Pull out your Funds at any time with no fees",
            header: "No Lockup Periods",
            profitIcon: FluentSystemIcons.ic_fluent_lock_filled,
          ),

          // Second row
          Gap(AppLayout.getHeight(30)),
          const Profits(
            description: "Up to 6% yearly interest, paid daily",
            header: "Daily Returns",
            profitIcon: FluentSystemIcons.ic_fluent_magic_wand_filled,
          ),

          // Third row
          Gap(AppLayout.getHeight(30)),
          const Profits(
            description: "Start now with as little as 1 USDT",
            header: "Easy Savings",
            profitIcon: FluentSystemIcons.ic_fluent_data_bar_horizontal_regular,
          ),
        ],
      ),
    );
  }
}

class Profits extends StatelessWidget {
  final String header;
  final String description;
  final IconData profitIcon;
  const Profits({
    super.key,
    required this.description,
    required this.header,
    required this.profitIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          profitIcon,
        ),
        Gap(AppLayout.getWidth(16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(15),
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: AppLayout.getHeight(12),
              ),
            ),
          ],
        )
      ],
    );
  }
}
