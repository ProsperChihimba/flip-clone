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
          const DepositOption(
            image: 'address.png',
            header: 'Crypto Address',
            desc: 'Fund your wallet from a crypto address',
            soon: false,
          ),

          // FLuidcoin option
          const DepositOption(
            image: 'fluidcoins.jpeg',
            header: 'Fluidcoins',
            desc: 'Fund your wallet with Fluidcoins',
            soon: false,
          ),

          // mono option
          const DepositOption(
            image: 'mono.PNG',
            header: 'Fund from your bank',
            desc: 'Pay from your bank with Mono',
            soon: true,
          ),

          // thepeer option
          const DepositOption(
            image: 'thepeer.png',
            header: 'Thepeer',
            desc: 'Send money to your Flip Wallet via Thepeer',
            soon: false,
          ),

          // usd option
          const DepositOption(
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

// deposit option class
class DepositOption extends StatelessWidget {
  final String image;
  final String header;
  final String desc;
  final bool soon;
  const DepositOption({
    super.key,
    required this.image,
    required this.header,
    required this.desc,
    required this.soon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppLayout.getHeight(18)),
      padding: EdgeInsets.only(
        top: AppLayout.getHeight(15),
        bottom: AppLayout.getHeight(15),
        left: AppLayout.getWidth(18),
        right: AppLayout.getWidth(10),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // First section with image, header and desc
          Row(
            children: [
              Image.asset(
                'assets/$image',
                width: AppLayout.getWidth(35),
              ),
              Gap(AppLayout.getWidth(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: AppLayout.getHeight(14.5),
                    ),
                  ),
                  Gap(AppLayout.getWidth(3)),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: AppLayout.getHeight(10),
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // show coming up soon banner for soon options
          soon == true
              ? Container(
                  // margin: EdgeInsets.only(left: AppLayout.getWidth(13)),
                  padding: EdgeInsets.only(top: AppLayout.getHeight(20)),
                  width: AppLayout.getWidth(95),
                  height: AppLayout.getHeight(50),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(30)),
                  ),
                  child: Text(
                    "Coming soon",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppLayout.getHeight(10),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
