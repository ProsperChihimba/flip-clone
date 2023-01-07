import 'package:flip/sections/paymentOptions.dart';
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

          // address option
          const PaymentOptions(
            image: 'address.png',
            header: 'Crypto Address',
            desc: 'Fund your wallet from a crypto address',
            soon: false,
          ),

          // FLuidcoin option
          const PaymentOptions(
            image: 'fluidcoins.jpeg',
            header: 'Fluidcoins',
            desc: 'Fund your wallet with Fluidcoins',
            soon: false,
          ),

          // mono option
          const PaymentOptions(
            image: 'mono.PNG',
            header: 'Fund from your bank',
            desc: 'Pay from your bank with Mono',
            soon: true,
          ),

          // thepeer option
          const PaymentOptions(
            image: 'thepeer.png',
            header: 'Thepeer',
            desc: 'Send money to your Flip Wallet via Thepeer',
            soon: false,
          ),

          // usd option
          const PaymentOptions(
            image: 'transaction.png',
            header: 'USD Deposit',
            desc: 'Deposit USD from bank',
            soon: true,
          ),
        ],
      ),
    );
  }
}
