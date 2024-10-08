import 'package:flutter/material.dart';
import 'package:optifreight/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          // Set a gradient background with purple and blue
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.purple[100]!,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            _buildAppBar(),
            const Spacer(),
            // Create a row with 3 cards centered in the screen that have a column with an icon and a text, 1 card for each of the following: Owner/Operator, Shipper, Carrier the items have to be centered in the card and the card must be a button
            SizedBox(
              height: 250,
              child: Row(
                children: [
                  const Spacer(),
                  IconCardButton(
                    icon: Icons.local_shipping,
                    title: "Owner Operator",
                    call2action:
                        "Maximize your profits while maintaining your freedom.",
                    onTap: () {},
                  ),
                  const Spacer(),
                  IconCardButton(
                    icon: Icons.trolley,
                    title: "Shipper",
                    call2action:
                        "Ship with the largest freight network in the world.",
                    onTap: () {},
                  ),
                  const Spacer(),
                  IconCardButton(
                    icon: Icons.assured_workload,
                    title: "Investor",
                    call2action: "Help finance a logistics revolution.",
                    onTap: () {},
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
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
