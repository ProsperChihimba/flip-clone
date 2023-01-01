import 'package:flip/utils/app_layout.dart';
import 'package:flip/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // qrcode & user name
          Container(
            width: AppLayout.getWidth(160),
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(8),
              horizontal: AppLayout.getWidth(12),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "@6zydusvlb",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  height: AppLayout.getHeight(30),
                  width: AppLayout.getWidth(35),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00008b),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(25)),
                  ),
                  child: Icon(
                    Icons.qr_code_scanner_rounded,
                    size: AppLayout.getHeight(20),
                    color: Styles.greenColor,
                  ),
                )
              ],
            ),
          ),

          // notification
          Container(
            height: AppLayout.getHeight(40),
            width: AppLayout.getWidth(40),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
              border: Border.all(
                width: AppLayout.getHeight(2),
                color: Colors.white,
              ),
            ),
            child: const Icon(
              Icons.notifications_rounded,
              color: Color(0xFF00008b),
            ),
          )
        ],
      ),
    );
  }
}
