import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

class WalletBalance extends StatefulWidget {
  const WalletBalance({super.key});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
      padding: EdgeInsets.only(
        left: AppLayout.getWidth(20),
        top: AppLayout.getHeight(7),
        bottom: AppLayout.getHeight(7),
        right: AppLayout.getWidth(7),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Bal - USDT 0.00",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),

          //
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(13),
                horizontal: AppLayout.getWidth(13)),
            decoration: BoxDecoration(
              color: const Color(0xFF00008b),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
            ),
            child: Text(
              "Empty Wallet",
              style: TextStyle(
                color: const Color.fromARGB(255, 148, 253, 166),
                fontSize: AppLayout.getHeight(10),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
