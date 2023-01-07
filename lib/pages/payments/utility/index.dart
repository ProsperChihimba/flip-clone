import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class UtilityShop extends StatelessWidget {
  const UtilityShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/card.png',
              width: AppLayout.getWidth(220),
            ),
          ),
          Gap(AppLayout.getHeight(30)),

          // header
          Text(
            "Utility Shop is Coming",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: AppLayout.getHeight(17),
            ),
          ),

          // Desc one
          Gap(AppLayout.getHeight(10)),
          Text(
            "Pay your favourite online vendors in a flash",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: AppLayout.getHeight(11.5),
            ),
          ),

          // Desc two
          Text(
            "Coming soo, we're still cooking",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: AppLayout.getHeight(11.5),
            ),
          ),
        ],
      ),

      //
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.only(bottom: AppLayout.getHeight(25)),
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                border: Border.all(
                  width: AppLayout.getHeight(2.5),
                ),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
              ),
              child: Icon(
                Icons.close_rounded,
                size: AppLayout.getHeight(30),
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
