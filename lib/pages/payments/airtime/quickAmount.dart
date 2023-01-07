import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

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
        )
      ],
    );
  }
}
