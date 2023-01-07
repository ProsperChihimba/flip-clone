import 'package:flip/utils/app_layout.dart';
import 'package:flip/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CUstomKeyboard extends StatefulWidget {
  const CUstomKeyboard({super.key});

  @override
  State<CUstomKeyboard> createState() => _CUstomKeyboardState();
}

class _CUstomKeyboardState extends State<CUstomKeyboard> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: size.height * 0.45,
      padding: EdgeInsets.only(
        left: AppLayout.getWidth(55),
        right: AppLayout.getWidth(55),
        top: AppLayout.getHeight(40),
        bottom: AppLayout.getHeight(20),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppLayout.getHeight(30)),
            topRight: Radius.circular(AppLayout.getHeight(30)),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // First row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1",
                style: Styles.numberStyle,
              ),
              Text(
                "2",
                style: Styles.numberStyle,
              ),
              Text(
                "3",
                style: Styles.numberStyle,
              ),
            ],
          ),

          // second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "4",
                style: Styles.numberStyle,
              ),
              Text(
                "5",
                style: Styles.numberStyle,
              ),
              Text(
                "6",
                style: Styles.numberStyle,
              ),
            ],
          ),

          // third row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "7",
                style: Styles.numberStyle,
              ),
              Text(
                "8",
                style: Styles.numberStyle,
              ),
              Text(
                "9",
                style: Styles.numberStyle,
              ),
            ],
          ),

          // last row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.cancel_rounded),
              Text(
                "0",
                style: Styles.numberStyle,
              ),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getWidth(25)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
