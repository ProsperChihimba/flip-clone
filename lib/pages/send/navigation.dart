import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
          decoration: BoxDecoration(
            border: Border.all(
              width: AppLayout.getHeight(1.5),
            ),
            borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
          ),
          child: Icon(
            FluentSystemIcons.ic_fluent_arrow_left_filled,
            size: AppLayout.getHeight(15),
            color: Colors.grey.shade600,
          ),
        ),

        //
        Text(
          "Withdraw",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: AppLayout.getHeight(17),
          ),
        ),
        Container()
      ],
    );
  }
}
