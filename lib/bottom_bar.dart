import 'package:flip/pages/account/index.dart';
import 'package:flip/pages/cards/index.dart';
import 'package:flip/pages/home/index.dart';
import 'package:flip/pages/payments/index.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:flip/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBarSection extends StatefulWidget {
  const BottomBarSection({super.key});

  @override
  State<BottomBarSection> createState() => _BottomBarSectionState();
}

class _BottomBarSectionState extends State<BottomBarSection> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const CardsPage(),
    const PaymentsPage(),
    const AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: AppLayout.getHeight(15),
          right: AppLayout.getHeight(15),
          bottom: AppLayout.getHeight(13),
        ),
        child: SizedBox(
          // height: AppLayout.getHeight(75),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.grey.shade100.withOpacity(0.4),
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              unselectedLabelStyle: Styles.normalText.copyWith(
                color: Colors.black,
                fontSize: AppLayout.getHeight(12),
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: AppLayout.getHeight(22),
                  ),
                  label: "Wallets",
                  activeIcon: Icon(
                    Icons.account_balance_wallet_rounded,
                    size: AppLayout.getHeight(22),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FluentSystemIcons.ic_fluent_payment_regular,
                    size: AppLayout.getHeight(22),
                  ),
                  label: "Cards",
                  activeIcon: Icon(
                    FluentSystemIcons.ic_fluent_payment_filled,
                    size: AppLayout.getHeight(22),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FluentSystemIcons.ic_fluent_layer_regular,
                    size: AppLayout.getHeight(22),
                  ),
                  label: "Payments",
                  activeIcon: Icon(
                    FluentSystemIcons.ic_fluent_layer_filled,
                    size: AppLayout.getHeight(22),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FluentSystemIcons.ic_fluent_person_regular,
                    size: AppLayout.getHeight(22),
                  ),
                  label: "Account",
                  activeIcon: Icon(
                    FluentSystemIcons.ic_fluent_person_filled,
                    size: AppLayout.getHeight(22),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
