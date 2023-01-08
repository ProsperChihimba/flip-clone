import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuickAmounts extends StatefulWidget {
  const QuickAmounts({super.key});

  @override
  State<QuickAmounts> createState() => _QuickAmountsState();
}

class _QuickAmountsState extends State<QuickAmounts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quick Amount",
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: AppLayout.getHeight(13),
          ),
        ),

        Gap(AppLayout.getHeight(10)),

        // quick amount list
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              MoneyOption(amount: "N 100"),
              MoneyOption(amount: "N 200"),
              MoneyOption(amount: "N 500"),
              MoneyOption(amount: "N 1000"),
            ],
          ),
        )
      ],
    );
  }
}

// money option
class MoneyOption extends StatelessWidget {
  final String amount;
  const MoneyOption({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: AppLayout.getWidth(10)),
      decoration: BoxDecoration(
        border: Border.all(
          width: AppLayout.getHeight(1),
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(15),
        vertical: AppLayout.getHeight(8),
      ),
      child: Text(
        amount,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
