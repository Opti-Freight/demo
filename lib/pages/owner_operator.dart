import 'package:flutter/material.dart';

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
        const OnboardingStep(
          icon: Icons.person,
          title: 'Create Your Account',
          description:
              'Sign up with your personal details and set up your wallet for secure transactions.',
        ),
        const SizedBox(height: 20),
        const OnboardingStep(
          icon: Icons.local_shipping,
          title: 'Register Your Truck',
          description:
              'Enter your truck details to tokenize your haul capacity and get started.',
        ),
        const SizedBox(height: 20),
        const OnboardingStep(
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

class OnboardingStep extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const OnboardingStep({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Icon(
          icon,
          size: 40,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
