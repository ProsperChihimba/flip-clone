import 'package:flip/sections/green_button.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerifyAccountModal extends StatelessWidget {
  const VerifyAccountModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // center small container
          Gap(AppLayout.getHeight(5)),
          Container(
            height: AppLayout.getHeight(7),
            width: AppLayout.getWidth(70),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          // image
          Gap(AppLayout.getHeight(22)),
          Image(
            image: const AssetImage(
              'assets/card.png',
            ),
            width: AppLayout.getWidth(150),
          ),

          // header
          Gap(AppLayout.getHeight(20)),
          Text(
            "Verify Account",
            style: TextStyle(
              fontSize: AppLayout.getHeight(20),
              fontWeight: FontWeight.w500,
            ),
          ),

          // desc
          Gap(AppLayout.getHeight(10)),
          Text(
            "We need to verify your account KYC verification can take between 12-72 hours to complete.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.withOpacity(0.9),
              fontSize: AppLayout.getHeight(12),
            ),
          ),

          // get started button
          Gap(AppLayout.getHeight(30)),
          const GreenButton(
            title: "Get Started",
            size: 21,
            hasIcon: false,
          ),

          //
          Gap(AppLayout.getHeight(30)),
        ],
      ),
    );
  }
}
