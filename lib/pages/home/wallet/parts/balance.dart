import 'package:flip/pages/home/fund/index.dart';
import 'package:flip/pages/home/send/index.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flip/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/back.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(28),
          ),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        height: AppLayout.getHeight(290),
        child: Column(
          children: [
            // First row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SPEND WALLET",
                  style: TextStyle(
                    fontSize: AppLayout.getHeight(10),
                    letterSpacing: 3,
                    fontFamily: 'Monument Extended',
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(12),
                    horizontal: AppLayout.getWidth(20),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(58, 127, 0, 246),
                        Color.fromARGB(255, 177, 4, 245),
                      ],
                    ),
                  ),
                  child: Text(
                    "Save Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppLayout.getHeight(13),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),

            // Second row
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: AppLayout.getHeight(20)),
                  child: Text(
                    "USDT",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: AppLayout.getHeight(11),
                    ),
                  ),
                ),
                Text(
                  "0",
                  style: TextStyle(
                    fontFamily: "Monument Extended",
                    fontSize: AppLayout.getHeight(40),
                    color: Colors.white,
                  ),
                )
              ],
            ),

            // Third row
            Gap(AppLayout.getHeight(38)),
            Text(
              "NGN 0",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: AppLayout.getHeight(11),
              ),
            ),

            // Forth row
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // First button
                InkWell(
                  onTap: () {
                    // fund wallet modal
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(AppLayout.getHeight(40)),
                        ),
                      ),
                      context: context,
                      builder: (context) => const FundModal(),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(26),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(25)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            AppLayout.getHeight(1.0),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00008b),
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(25),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: AppLayout.getHeight(15),
                            color: Styles.greenColor,
                          ),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Text(
                          "Fund Wallet",
                          style: TextStyle(
                            fontSize: AppLayout.getHeight(12),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Second button
                InkWell(
                  onTap: () {
                    Get.to(const SendMoney());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(26),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: AppLayout.getHeight(2),
                        color: Colors.white,
                      ),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(25)),
                    ),
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: -0.6,
                          child: Icon(
                            FluentSystemIcons.ic_fluent_send_filled,
                            size: AppLayout.getHeight(15),
                            color: Colors.white,
                          ),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Text(
                          "Send Money",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppLayout.getHeight(12),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
