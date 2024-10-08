import 'package:flutter/material.dart';
import 'package:optifreight/widgets/benefit_tile.dart';

class OwnerOperatorOnboardingPage extends StatelessWidget {
  const OwnerOperatorOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Opti-Freight'),
        actions: [
          Image.asset(
            "assets/images/icon.png",
            width: 100,
            filterQuality: FilterQuality.high,
          )
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: screenSize.width * .8,
          height: screenSize.height * .8,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: SizedBox(
                width: screenSize.width * 7,
                child: _buildOnboarding(screenSize, context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _buildOnboarding(Size screenSize, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Get Started with Opti-Freight',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "We are excited to have you join our Owner-Operator Federated Network. Let's get you set up quickly so you can start optimizing your haul capacity.",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 30),
        const BenefitTile(
          icon: Icons.person,
          title: 'Create Your Account',
          description:
              'Sign up with your personal details and set up your wallet for secure transactions.',
        ),
        const SizedBox(height: 20),
        const BenefitTile(
          icon: Icons.local_shipping,
          title: 'Register Your Truck',
          description:
              'Enter your truck details to tokenize your haul capacity and get started.',
        ),
        const SizedBox(height: 20),
        const BenefitTile(
          icon: Icons.payment,
          title: 'Link Your Wallet',
          description:
              'Link your blockchain wallet to receive payments and manage your OPTI tokens.',
        ),
        SizedBox(height: screenSize.height * 0.1),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the account creation or main onboarding screen
              Navigator.pushNamed(context, '/createAccount');
            },
            child: const Text('Get Started'),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
