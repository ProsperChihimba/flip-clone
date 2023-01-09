import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountHeader extends StatefulWidget {
  const AccountHeader({super.key});

  @override
  State<AccountHeader> createState() => _AccountHeaderState();
}

class _AccountHeaderState extends State<AccountHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // profile section
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: AppLayout.getWidth(85),
              height: AppLayout.getHeight(85),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(28)),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 81, 235, 107),
                    Color.fromARGB(255, 207, 255, 160),
                  ],
                ),
              ),
            ),
            Container(
              width: AppLayout.getWidth(78),
              height: AppLayout.getHeight(78),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(28)),
                color: Colors.white,
              ),
            ),
            Container(
              width: AppLayout.getWidth(73),
              height: AppLayout.getHeight(73),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(28)),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  "PA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppLayout.getHeight(24),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),

        // profile name
        Gap(AppLayout.getWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile name
            Text(
              "@Prosper",
              style: TextStyle(
                fontSize: AppLayout.getHeight(20),
                fontWeight: FontWeight.w500,
              ),
            ),

            // user tier
            Gap(AppLayout.getHeight(8)),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(5),
                horizontal: AppLayout.getWidth(12),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Tier 0",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: AppLayout.getHeight(13),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
