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
      decoration: InputDecoration(
        hintText: "Amount",
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade700,
          fontSize: AppLayout.getHeight(15),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(20),
          horizontal: AppLayout.getHeight(30),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFF4F4F4),
          ),
        ),
      ),
    );
  }
}
