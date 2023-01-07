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

            //
          ],
        ),
      ),
    );
  }
}
