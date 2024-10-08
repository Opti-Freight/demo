import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optifreight/pages/pages.dart';
import 'package:optifreight/widgets/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 30,
        runSpacing: 30,
        children: [
          IconCardButton(
            icon: Icons.local_shipping,
            title: "Owner Operator",
            call2action:
                "Maximize your profits while maintaining your freedom.",
            onTap: () {
              Get.to(const OwnerOperatorOnboardingPage());
            },
          ),
          IconCardButton(
            icon: Icons.trolley,
            title: "Shipper",
            call2action: "Ship with the largest freight network in the world.",
            onTap: () {},
          ),
          IconCardButton(
            icon: Icons.assured_workload,
            title: "Investor",
            call2action: "Help finance a logistics revolution.",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
