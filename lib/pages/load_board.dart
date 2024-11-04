import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LoadBoardPage extends StatelessWidget {
  const LoadBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LoadCard(
          age: '55m',
          date: '28 May',
          deadhead: '18 mi',
          pickupLocation: 'Commerce, CA',
          dropoffLocation: 'Chico, CA',
          miles: '477 mi',
          type: 'Van',
          weight: 'FTL',
          price: '\$1000',
          rate: '\$2.09/mi',
        ),
        LoadCard(
          age: '22m',
          date: '5 Jun',
          deadhead: '40 mi',
          pickupLocation: 'Mira Loma, CA',
          dropoffLocation: 'West Sacramento, CA',
          miles: '431 mi',
          type: 'Reefer',
          weight: '44k lbs (FTL)',
          price: '\$850',
          rate: '\$1.97/mi',
        ),
        LoadCard(
          age: '22m',
          date: '28 May',
          deadhead: '40 mi',
          pickupLocation: 'Mira Loma, CA',
          dropoffLocation: 'Unknown Destination',
          miles: '430 mi',
          type: 'Reefer',
          weight: '21k lbs (FTL)',
          price: '\$850',
          rate: '\$1.97/mi',
        ),
      ],
    );
  }
}
