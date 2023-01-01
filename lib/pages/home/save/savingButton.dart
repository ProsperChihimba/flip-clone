import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

class SavingButton extends StatelessWidget {
  const SavingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(18),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
        //
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 81, 235, 107),
              Color.fromARGB(255, 207, 255, 160),
            ],
          ),
          borderRadius: BorderRadius.circular(30),
        ),

        child: const Text(
          "Start Saving",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
