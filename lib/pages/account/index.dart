import 'package:flip/pages/account/header.dart';
import 'package:flip/pages/account/invite_button.dart';
import 'package:flip/pages/account/verify_modal.dart';
import 'package:flip/sections/green_button.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<Map> accountList = [
    {
      "icon": FluentSystemIcons.ic_fluent_edit_regular,
      "option": "Edit Profile",
    },
    {
      "icon": FluentSystemIcons.ic_fluent_bank_filled,
      "option": "Bank",
    },
    {
      "icon": FluentSystemIcons.ic_fluent_lock_filled,
      "option": "Security",
    },
  ];
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
            InkWell(
              onTap: () {
                // verify account modal
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppLayout.getHeight(40)),
                    ),
                  ),
                  context: context,
                  builder: (context) => const VerifyAccountModal(),
                );
              },
              child: const GreenButton(
                title: "Verify Account",
                size: 17,
                hasIcon: true,
              ),
            ),

            // Invite friend
            Gap(AppLayout.getHeight(15)),
            const InviteButton(),

            // Account settings
            Gap(AppLayout.getHeight(40)),
            Text(
              "Account Settings",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: AppLayout.getHeight(13),
              ),
            ),
            Gap(AppLayout.getHeight(15)),

            // edit profile
            const ProfileOption(
              icon: FluentSystemIcons.ic_fluent_edit_regular,
              option: "Edit Profile",
            ),

            // bank
            const ProfileOption(
              icon: FluentSystemIcons.ic_fluent_bank_filled,
              option: "Bank",
            ),

            // security
            const ProfileOption(
              icon: FluentSystemIcons.ic_fluent_lock_filled,
              option: "Security",
            ),

            // General Settings
            Gap(AppLayout.getHeight(20)),
            Text(
              "General Settings",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: AppLayout.getHeight(13),
              ),
            ),
            Gap(AppLayout.getHeight(15)),

            // learn
            const ProfileOption(
              icon: FluentSystemIcons.ic_fluent_notebook_filled,
              option: "Learn",
            ),
          ],
        ),
      ),
    );
  }
}

// profile setting option
class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String option;
  const ProfileOption({super.key, required this.icon, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppLayout.getHeight(20)),
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(25),
        horizontal: AppLayout.getWidth(25),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100.withOpacity(0.5),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: AppLayout.getHeight(20),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            option,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
