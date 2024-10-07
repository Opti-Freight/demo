import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            SizedBox(
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
                            '/images/logo.png',
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
            ),
            const Spacer(),
            // Create a row with 3 cards centered in the screen that have a column with an icon and a text, 1 card for each of the following: Owner/Operator, Shipper, Carrier the items have to be centered in the card and the card must be a button
            SizedBox(
              height: 250,
              child: Row(
                children: [
                  const Spacer(),
                  SizedBox(
                    width: 250,
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          // Navigate to the Owner/Operator page
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_shipping,
                              size: 50,
                            ),
                            Text(
                              'Owner/Operator',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 250,
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          // Navigate to the Shipper page
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.trolley,
                              size: 50,
                            ),
                            Text(
                              'Shipper',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 250,
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          // Navigate to the Carrier page
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assured_workload,
                              size: 50,
                            ),
                            Text(
                              'Investor',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
}
