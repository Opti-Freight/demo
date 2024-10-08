import 'package:flutter/material.dart';
import 'package:optifreight/utils/utils.dart';
import 'package:optifreight/pages/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          // Set a gradient background with purple and blue
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.tertiary,
              AppColors.secondary,
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            _buildAppBar(),
            const OnboardingPage(),
          ],
        ),
      ),
    );
  }

  SizedBox _buildAppBar() {
    return SizedBox(
      height: 250,
      child: Row(
        children: [
          Container(
            width: 250,
            padding: const EdgeInsets.only(left: 50),
            child: const Column(
              children: [
                Image(
                  image: AssetImage(
                    'images/logo.png',
                  ),
                ),
                Text(
                  'FEDERATED FREIGHT NETWORK',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
