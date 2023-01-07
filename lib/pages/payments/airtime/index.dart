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
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
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
            )
          ],
        ),
      ),
    );
  }
}
