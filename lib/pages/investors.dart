import 'package:flutter/material.dart';
import 'package:optifreight/widgets/widgets.dart';

class InvestorLandingPage extends StatelessWidget {
  const InvestorLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invest in OPTI Coin'),
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
            'Why Invest in OPTI Coin?',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'OPTI Coin is the native utility token for the Opti-Freight network, providing investors with a unique opportunity to be part of the future of decentralized freight logistics. Built on the Solana blockchain, OPTI offers transparency, liquidity, and long-term growth potential.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),
          const BenefitTile(
            icon: Icons.trending_up,
            title: 'High Growth Potential',
            description:
                'Opti-Freight is revolutionizing the logistics industry, providing opportunities for early investors to benefit from the growth of decentralized logistics and blockchain technology.',
          ),
          const SizedBox(height: 20),
          const BenefitTile(
            icon: Icons.lock,
            title: 'Secure & Transparent',
            description:
                'Blockchain technology ensures transparency and security for all transactions, giving investors peace of mind that their assets are safeguarded.',
          ),
          const SizedBox(height: 20),
          const BenefitTile(
            icon: Icons.pie_chart,
            title: 'Diversified Portfolio Benefits',
            description:
                'Investing in OPTI Coin provides exposure to both the logistics and blockchain sectors, adding diversity to your investment portfolio.',
          ),
          const SizedBox(height: 20),
          const BenefitTile(
            icon: Icons.attach_money,
            title: 'Staking Rewards',
            description:
                'Earn rewards by staking OPTI coins, helping to secure the network and earn passive income through regular staking payouts.',
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the investment form or contact page
                Navigator.pushNamed(context, '/investNow');
              },
              child: const Text('Invest Now'),
            ),
          ),
        ],
      ),
    );
  }
}
