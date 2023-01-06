import 'package:flutter/material.dart';

import '../../utils/app_layout.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 253, 166),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(17),
        ),
      ),
    );
  }
}