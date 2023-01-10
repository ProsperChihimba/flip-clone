import 'package:flip/pages/payments/airtime/provider_modal.dart';
import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ChooseProvider extends StatefulWidget {
  const ChooseProvider({super.key});

  @override
  State<ChooseProvider> createState() => _ChooseProviderState();
}

class _ChooseProviderState extends State<ChooseProvider> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // choose provider  modal
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppLayout.getHeight(40)),
            ),
          ),
          context: context,
          builder: (context) => const ProvidersModal(),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(20),
          horizontal: AppLayout.getWidth(20),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
          border: Border.all(
            width: AppLayout.getWidth(5),
            color: Colors.grey.shade300,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // text
            Text(
              "Choose Provider",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: AppLayout.getHeight(17),
              ),
            ),

            // icon
            Icon(
              FluentSystemIcons.ic_fluent_chevron_down_circle_filled,
              size: AppLayout.getHeight(30),
              color: const Color(0xFFa8ff79),
            )
          ],
        ),
      ),
    );
  }
}
