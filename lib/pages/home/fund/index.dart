import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FundModal extends StatefulWidget {
  const FundModal({super.key});

  @override
  State<FundModal> createState() => _FundModalState();
}

class _FundModalState extends State<FundModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // center small container
          Gap(AppLayout.getHeight(5)),
          Center(
            child: Container(
              height: AppLayout.getHeight(7),
              width: AppLayout.getWidth(70),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          // Header
          Gap(AppLayout.getHeight(22)),
          Text(
            "Fund Wallet",
            style: TextStyle(
              fontSize: AppLayout.getHeight(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          // description
          Text(
            "Deposit funds in your wallet to save, earn and spend.",
            style: TextStyle(
              fontSize: AppLayout.getHeight(10.5),
              color: Colors.grey.shade500,
            ),
          ),

          // Deposit Options
          Gap(AppLayout.getHeight(50)),

          // options
          Container(
            margin: EdgeInsets.only(bottom: AppLayout.getHeight(10)),
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(15),
              horizontal: AppLayout.getWidth(18),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/fluidcoins.jpeg',
                  width: AppLayout.getWidth(35),
                ),
                Gap(AppLayout.getWidth(15)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fluidcoins",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: AppLayout.getHeight(16),
                      ),
                    ),
                    Gap(AppLayout.getWidth(3)),
                    Text(
                      "Fund your wallet with Fluidcoins",
                      style: TextStyle(
                        fontSize: AppLayout.getHeight(10),
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
