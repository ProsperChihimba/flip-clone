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
            width: AppLayout.getWidth(180),
          ),
        ],
      ),
    );
  }
}
