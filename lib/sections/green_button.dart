import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String title;
  final double size;
  const GreenButton({super.key, required this.title, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(size)),
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

      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
