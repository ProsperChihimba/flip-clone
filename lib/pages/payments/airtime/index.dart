import 'package:flip/pages/payments/airtime/amount.dart';
import 'package:flip/pages/payments/airtime/choose_provider.dart';
import 'package:flip/pages/payments/airtime/phone_number.dart';
import 'package:flip/pages/payments/airtime/quick_amount.dart';
import 'package:flip/sections/green_button.dart';
import 'package:flip/sections/navigation.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AirtimeScreen extends StatefulWidget {
  const AirtimeScreen({super.key});

  @override
  State<AirtimeScreen> createState() => _AirtimeScreenState();
}

class _AirtimeScreenState extends State<AirtimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(18)),
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(25)),

            // navigation
            const NavigationSection(
              header: "",
              hasHeader: false,
            ),

            // header
            Gap(AppLayout.getHeight(30)),
            Text(
              "Airtime",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(25),
              ),
            ),

            // Description
            Gap(AppLayout.getHeight(5)),
            Text(
              "Spend Wallet Balance - NGN 0",
              style: TextStyle(
                fontSize: AppLayout.getHeight(13),
                color: Colors.grey.shade400,
              ),
            ),

            // choose provider section
            Gap(AppLayout.getHeight(20)),
            const ChooseProvider(),

            // contact
            Gap(AppLayout.getHeight(20)),
            const PhoneNumber(),

            // amout
            Gap(AppLayout.getHeight(20)),
            const AmountInput(),

            // quick amounts
            Gap(AppLayout.getHeight(40)),
            const QuickAmounts(),
          ],
        ),
      ),

      // button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: AppLayout.getHeight(20),
          right: AppLayout.getWidth(18),
          left: AppLayout.getWidth(18),
        ),
        child: const GreenButton(title: "Proceed"),
      ),
    );
  }
}
