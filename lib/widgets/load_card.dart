import 'package:flutter/material.dart';

class LoadCard extends StatelessWidget {
  final String age;
  final String date;
  final String deadhead;
  final String pickupLocation;
  final String dropoffLocation;
  final String miles;
  final String type;
  final String weight;
  final String price;
  final String rate;

  const LoadCard({
    super.key,
    required this.age,
    required this.date,
    required this.deadhead,
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.miles,
    required this.type,
    required this.weight,
    required this.price,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'age $age',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const Spacer(),
                Text(date, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 8),
                Text('deadhead $deadhead'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.location_on, size: 16),
                const SizedBox(width: 4),
                Text("Pick up: $pickupLocation"),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.location_on, size: 16),
                const SizedBox(width: 4),
                Text("Drop off: $dropoffLocation"),
              ],
            ),
            const SizedBox(height: 8),
            const Text('Broker', style: TextStyle(color: Colors.grey)),
            const Text('GI Logistics',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$miles $type $weight'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(price,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(rate, style: const TextStyle(color: Colors.green)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text('CALL'),
            ),
          ],
        ),
      ),
    );
  }
}
