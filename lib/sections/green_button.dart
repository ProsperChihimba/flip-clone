import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GreenButton extends StatelessWidget {
  final String title;
  final double size;
  final bool hasIcon;
  const GreenButton({
    super.key,
    required this.title,
    required this.size,
    required this.hasIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(size)),
      //
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 81, 235, 107),
            Color.fromARGB(255, 207, 255, 160),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          hasIcon == true
              ? Icon(
                  FluentSystemIcons.ic_fluent_person_filled,
                  size: AppLayout.getHeight(15),
                )
              : Container(),
          hasIcon == true ? Gap(AppLayout.getWidth(10)) : Container(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
