import 'package:flip/pages/account/header.dart';
import 'package:flip/pages/account/invite_button.dart';
import 'package:flip/sections/green_button.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),

        //
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(30)),

            // header
            const AccountHeader(),

            // account verification button
            Gap(AppLayout.getHeight(30)),
            const GreenButton(
              title: "Verify Account",
              size: 17,
              hasIcon: true,
            ),

            // Invite friend
            Gap(AppLayout.getHeight(15)),
            const InviteButton(),
          ],
        ),
      ),
    );
  }
}
