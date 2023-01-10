import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AmountInput extends StatefulWidget {
  const AmountInput({super.key});

  @override
  State<AmountInput> createState() => _AmountInputState();
}

class _AmountInputState extends State<AmountInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100.withOpacity(0.5),
        hintText: "Amount",
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade700,
          fontSize: AppLayout.getHeight(15),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(25),
          horizontal: AppLayout.getHeight(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(40)),
          borderSide: BorderSide(
            color: Colors.grey.shade300.withOpacity(0.5),
            width: AppLayout.getWidth(4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(40)),
          borderSide: BorderSide(
            color: Colors.grey.shade300.withOpacity(0.5),
            width: AppLayout.getWidth(4),
          ),
        ),
      ),
    );
  }
}
