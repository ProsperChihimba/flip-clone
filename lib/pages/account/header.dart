import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

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
              width: AppLayout.getWidth(80),
              height: AppLayout.getHeight(80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(27)),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 81, 235, 107),
                    Color.fromARGB(255, 207, 255, 160),
                  ],
                ),
              ),
            ),
            Container(
              width: AppLayout.getWidth(73),
              height: AppLayout.getHeight(73),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(27)),
                color: Colors.white,
              ),
            ),
            Container(
              width: AppLayout.getWidth(68),
              height: AppLayout.getHeight(68),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(27)),
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
        )
      ],
    );
  }
}
