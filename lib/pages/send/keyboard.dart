import 'package:flip/utils/app_layout.dart';
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
      height: size.height * 0.50,
      child: Text("data"),
    );
  }
}
