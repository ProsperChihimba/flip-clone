import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

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
            Row(
              children: [
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
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
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

            //
          ],
        ),
      ),
    );
  }
}
