import 'package:flip/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProvidersModal extends StatelessWidget {
  const ProvidersModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // small container
          Gap(AppLayout.getHeight(5)),
          Center(
            child: Container(
              height: AppLayout.getHeight(7),
              width: AppLayout.getWidth(70),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          // Header
          Gap(AppLayout.getHeight(22)),
          Text(
            "Choose Provider",
            style: TextStyle(
              fontSize: AppLayout.getHeight(20),
              fontWeight: FontWeight.w500,
            ),
          ),

          // providers
          Gap(AppLayout.getHeight(40)),

          // mtn
          const ProviderOption(image: "mtn.PNG", option: "MTN"),

          // glo
          const ProviderOption(image: "glo.PNG", option: "GLO"),

          // 9mobile
          const ProviderOption(image: "9mobile.PNG", option: "9mobile"),

          // aitel
          const ProviderOption(image: "airtel.PNG", option: "Airtel"),

          //
          Gap(AppLayout.getHeight(80))
        ],
      ),
    );
  }
}

class ProviderOption extends StatelessWidget {
  final String image;
  final String option;
  const ProviderOption({
    super.key,
    required this.image,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppLayout.getHeight(20)),
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(10),
        horizontal: AppLayout.getWidth(25),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200.withOpacity(0.5),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage("assets/$image"),
            width: AppLayout.getHeight(50),
          ),
          Gap(AppLayout.getWidth(15)),
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
