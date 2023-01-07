import 'package:flip/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationSection extends StatelessWidget {
  final String header;
  final bool hasHeader;
  const NavigationSection({
    super.key,
    required this.hasHeader,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
            decoration: BoxDecoration(
              border: Border.all(
                width: AppLayout.getHeight(1.8),
              ),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
            ),
            child: Icon(
              FluentSystemIcons.ic_fluent_arrow_left_filled,
              size: AppLayout.getHeight(15),
              color: Colors.grey.shade600,
            ),
          ),
        ),

        //
        hasHeader == true
            ? Text(
                header,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: AppLayout.getHeight(17),
                ),
              )
            : Container(),
        //
        Container()
      ],
    );
  }
}
