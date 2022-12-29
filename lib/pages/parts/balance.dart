import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(25),
            ),
            color: Colors.black,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          height: AppLayout.getHeight(250),
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
              Gap(AppLayout.getHeight(20)),
            ],
          )),
    );
  }
}
