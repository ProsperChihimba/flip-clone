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
            height: AppLayout.getHeight(110),
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
                  width: AppLayout.getWidth(85),
                  height: AppLayout.getHeight(85),
                )
              ],
            ),
          ),

          // second container
          Gap(AppLayout.getWidth(20)),

          Container(
            width: size.width * 0.67,
            height: AppLayout.getHeight(110),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 58, 33, 243),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(16),
                  ),
                  child: Column(
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
                ),

                // second container
                SizedBox(
                  width: size.width * 0.25,
                  height: AppLayout.getHeight(110),
                  child: Stack(
                    children: [
                      // first stack
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image(
                              image: const AssetImage("assets/spotify.PNG"),
                              width: AppLayout.getHeight(60),
                            ),
                          ),
                          Positioned(
                            top: AppLayout.getHeight(-30),
                            left: AppLayout.getWidth(20),
                            child: Image(
                              image: const AssetImage("assets/tube.PNG"),
                              width: AppLayout.getHeight(50),
                            ),
                          ),
                          Positioned(
                            bottom: AppLayout.getHeight(-10),
                            child: Image(
                              image: const AssetImage("assets/itune.PNG"),
                              width: AppLayout.getHeight(35),
                            ),
                          ),
                        ],
                      ),

                      // second stack
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage("assets/netflix.PNG"),
                              width: AppLayout.getHeight(40),
                            ),
                            Image(
                              image: const AssetImage("assets/vivo.PNG"),
                              width: AppLayout.getHeight(40),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
