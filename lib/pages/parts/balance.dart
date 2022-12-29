import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Container(
        height: AppLayout.getHeight(200),
        color: Colors.black,
      ),
    );
  }
}
