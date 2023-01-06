import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BalanceSelection extends StatefulWidget {
  const BalanceSelection({super.key});

  @override
  State<BalanceSelection> createState() => _BalanceSelectionState();
}

class _BalanceSelectionState extends State<BalanceSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Amount in usdt
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // icon
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(2)),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(8)),
                    topLeft: Radius.circular(AppLayout.getHeight(8))),
              ),
              child: Text(
                "T",
                style: TextStyle(
                    color: const Color.fromARGB(255, 148, 253, 166),
                    fontWeight: FontWeight.w500,
                    fontSize: AppLayout.getHeight(11)),
              ),
            ),

            // amount
            Gap(AppLayout.getWidth(5)),
            Text(
              "8",
              style: TextStyle(
                fontSize: AppLayout.getHeight(85),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
