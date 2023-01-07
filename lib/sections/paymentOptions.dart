import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentOptions extends StatelessWidget {
  final String image;
  final String header;
  final String desc;
  final bool soon;
  const PaymentOptions({
    super.key,
    required this.image,
    required this.header,
    required this.desc,
    required this.soon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppLayout.getHeight(18)),
      padding: EdgeInsets.only(
        top: AppLayout.getHeight(15),
        bottom: AppLayout.getHeight(15),
        left: AppLayout.getWidth(18),
        right: AppLayout.getWidth(10),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // First section with image, header and desc
          Row(
            children: [
              Image.asset(
                'assets/$image',
                width: AppLayout.getWidth(35),
              ),
              Gap(AppLayout.getWidth(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: AppLayout.getHeight(14.5),
                    ),
                  ),
                  Gap(AppLayout.getWidth(3)),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: AppLayout.getHeight(10),
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // show coming up soon banner for soon options
          soon == true
              ? Container(
                  // margin: EdgeInsets.only(left: AppLayout.getWidth(13)),
                  padding: EdgeInsets.only(top: AppLayout.getHeight(20)),
                  width: AppLayout.getWidth(95),
                  height: AppLayout.getHeight(50),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(30)),
                  ),
                  child: Text(
                    "Coming soon",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppLayout.getHeight(10),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
