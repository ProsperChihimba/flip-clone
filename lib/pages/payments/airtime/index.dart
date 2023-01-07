import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // navigation
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                border: Border.all(
                  width: AppLayout.getHeight(1.5),
                ),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              ),
              child: Icon(
                FluentSystemIcons.ic_fluent_arrow_left_filled,
                size: AppLayout.getHeight(15),
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
