import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(16),
            ),
            width: size.width * 0.67,
            height: AppLayout.getHeight(105),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Start saving your",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "money in USDT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Image
                Image(
                  image: const AssetImage('assets/card.png'),
                  width: AppLayout.getWidth(80),
                  height: AppLayout.getHeight(80),
                )
              ],
            ),
          ),

          // second container
          Gap(AppLayout.getWidth(20)),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(16),
            ),
            width: size.width * 0.67,
            height: AppLayout.getHeight(105),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 58, 33, 243),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Create Card to Make",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Online Payments",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // second container
              ],
            ),
          )
        ],
      ),
    );
  }
}
