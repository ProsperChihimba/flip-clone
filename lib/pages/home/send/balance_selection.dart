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
        ),

        // amount in ngn
        Gap(AppLayout.getHeight(5)),
        Text(
          "N 5,738.56",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: AppLayout.getHeight(17),
          ),
        ),

        // switch assets
        Gap(AppLayout.getHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Switch Asset",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(15),
              ),
            ),
            Gap(AppLayout.getWidth(5)),
            const Icon(FluentSystemIcons.ic_fluent_arrow_up_circle_filled)
          ],
        )
      ],
    );
  }
}
