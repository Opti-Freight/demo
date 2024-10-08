import 'package:flutter/material.dart';
import 'package:optifreight/widgets/widgets.dart';

class ShipperLandingPage extends StatelessWidget {
  const ShipperLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opti-Freight for Shippers'),
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
                child: _buildLanding(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _buildLanding(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Why Choose Opti-Freight?',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Opti-Freight offers an innovative solution for shippers seeking reliable, efficient, and transparent freight logistics. By utilizing blockchain technology, we provide an unprecedented level of transparency and efficiency for your logistics needs.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),
          const BenefitTile(
            icon: Icons.security,
            title: 'Unmatched Transparency & Security',
            description:
                'Blockchain-based tracking ensures all transactions and movements are fully transparent and secure, reducing risks and increasing trust.',
          ),
          const SizedBox(height: 20),
          const BenefitTile(
            icon: Icons.local_shipping,
            title: 'Optimized Freight Capacity',
            description:
                'Our AI-driven route optimization and consolidation systems ensure that your shipments are always delivered in the most efficient way, saving both time and money.',
          ),
          const SizedBox(height: 20),
          const BenefitTile(
            icon: Icons.attach_money,
            title: 'Cost Savings Through Direct Connections',
            description:
                'Connect directly with owner-operators, reducing intermediaries and their associated costs, resulting in competitive rates for your logistics needs.',
          ),
          const SizedBox(height: 20),
          const BenefitTile(
            icon: Icons.access_time,
            title: 'Real-Time Tracking & Updates',
            description:
                'Receive real-time updates on the status of your shipments, from pickup to delivery, enabling better planning and communication.',
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the onboarding page or contact form
                Navigator.pushNamed(context, '/contactSales');
              },
              child: const Text('Get Started Today'),
            ),
          ),
        ],
      ),
    );
  }
}
