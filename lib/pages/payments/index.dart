import 'package:flip/pages/home/send/index.dart';
import 'package:flip/pages/payments/airtime/index.dart';
import 'package:flip/sections/payment_options.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flip/utils/comming_soon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(17),
        ),
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(25)),

            // header
            Text(
              "Payments",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(25),
              ),
            ),

            Gap(AppLayout.getHeight(25)),

            // payments options
            const PaymentOptions(
              image: 'fluidcoins.jpeg',
              header: 'Buy Airtime',
              desc: 'Buy airtime directly from your Spend wallet',
              soon: false,
              navigate: AirtimeScreen(),
            ),

            //utility shop
            const PaymentOptions(
              image: 'fluidcoins.jpeg',
              header: 'Utility Shop',
              desc: 'Coming soon!',
              soon: false,
              navigate: CommingSoonPage(
                header: "Utility Shop is Coming",
                firstDesc: "Pay your favourite online vendors in a flash",
                secondDesc: "Coming soon, we're still cooking",
              ),
            ),

            // merchant directory
            const PaymentOptions(
              image: 'fluidcoins.jpeg',
              header: 'Merchant Directory',
              desc: 'Coming soon!',
              soon: false,
              navigate: CommingSoonPage(
                header: "Merchant Directory is Coming",
                firstDesc: "Pay your favourite online vendors in a flash",
                secondDesc: "Coming soon, we're still cooking",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
