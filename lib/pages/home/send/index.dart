import 'package:flip/pages/home/send/balance_selection.dart';
import 'package:flip/sections/keyboard.dart';
import 'package:flip/sections/navigation.dart';
import 'package:flip/pages/home/send/wallet_balance.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flip/utils/app_layout.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 253, 166),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(17),
        ),

        //
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(30)),

            // navigation section
            const NavigationSection(
              header: "Withdraw",
              hasHeader: true,
            ),

            // Balance view
            Gap(AppLayout.getHeight(5)),
            const BalanceSelection(),

            // Withdraw button
            Gap(AppLayout.getHeight(75)),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
              //
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),

              child: Text(
                "Withdraw",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: AppLayout.getHeight(16),
                ),
              ),
            ),
          ],
        ),
      ),

      // keyboard
      bottomNavigationBar: SizedBox(
        height: size.height * 0.48,
        child: Stack(
          children: const [
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: CUstomKeyboard(),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: WalletBalance(),
            ),
          ],
        ),
      ),
    );
  }
}
