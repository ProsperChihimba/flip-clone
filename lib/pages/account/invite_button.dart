import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InviteButton extends StatelessWidget {
  const InviteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
      //
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 1, 12, 50),
        borderRadius: BorderRadius.circular(30),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FluentSystemIcons.ic_fluent_people_filled,
            color: Color.fromARGB(255, 207, 255, 160),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            "Invite a friend and earn N1000!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: AppLayout.getHeight(13),
            ),
          ),
        ],
      ),
    );
  }
}
