import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> with TickerProviderStateMixin {
  late TabController _tabController;
  late TabController _tabController2;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController2 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFiltersSection(),
                _buildStatusCards(),
                _buildShipmentOverview(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: _buildCommentsSection(),
          ),
        ],
      ),
    );
  }

  Widget _buildFiltersSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 10.0,
        children: [
          _buildFilterChip('All filters'),
          _buildFilterChip('Saved filter sets'),
          _buildFilterChip('Service group: 3PL accounts'),
          _buildFilterChip('Domain: Radio Emporium'),
          _buildFilterChip('Dropoff range: Must arrive by 2/22/23'),
          TextButton(onPressed: () {}, child: const Text('Reset'))
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Chip(
      elevation: 10,
      label: Text(label),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _buildStatusCards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatusCard('Delivered', '5'),
          _buildStatusCard('Tracking on time', '31'),
          _buildStatusCard('At risk', '23'),
          _buildStatusCard('Past due shipped', '5', Colors.red),
          _buildStatusCard('Past due delivered', '12', Colors.red),
        ],
      ),
    );
  }

  Widget _buildStatusCard(String label, String count, [Color? color]) {
    return Card(
      elevation: 1,
      child: Container(
        width: 130,
        height: 100,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(count,
                style: TextStyle(
                    fontSize: 24,
                    color: color ?? Colors.black,
                    fontWeight: FontWeight.w900)),
            const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShipmentOverview() {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Shipment status'),
              Tab(text: 'Appointment status'),
              Tab(text: 'Map'),
              Tab(text: 'Customs status'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildStatusData,
                _buildAppointmentData,
                _buildMapTab(),
                _buildCustomsData
              ],
            ),
          ),
        ],
      ),
    );
  }
  // Creata a data table with appointment status data to pass to the TabBarView

  final Widget _buildAppointmentData = Card(
    child: DataTable(
      columns: const [
        DataColumn(label: Text('Shipment ID')),
        DataColumn(label: Text('Appointment Date')),
        DataColumn(label: Text('Appointment Time')),
        DataColumn(label: Text('Location')),
        DataColumn(label: Text('Status')),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text('12345')),
          DataCell(Text('02/22/2023')),
          DataCell(Text('10:00 AM')),
          DataCell(Text('Los Angeles, CA')),
          DataCell(Text('Scheduled')),
        ]),
        DataRow(cells: [
          DataCell(Text('12346')),
          DataCell(Text('02/22/2023')),
          DataCell(Text('10:00 AM')),
          DataCell(Text('Los Angeles, CA')),
          DataCell(Text('Scheduled')),
        ]),
        DataRow(cells: [
          DataCell(Text('12347')),
          DataCell(Text('02/22/2023')),
          DataCell(Text('10:00 AM')),
          DataCell(Text('Los Angeles, CA')),
          DataCell(Text('Scheduled')),
        ]),
      ],
    ),
  );

  // Create a data table with shipment status data to pass to the TabBarView
  final Widget _buildStatusData = Card(
    child: DataTable(
      columns: const [
        DataColumn(label: Text('Shipment ID')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Carrier')),
        DataColumn(label: Text('Origin')),
        DataColumn(label: Text('Destination')),
        DataColumn(label: Text('Delivery Date')),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text('12345')),
          DataCell(Text('In transit')),
          DataCell(Text('Opti-Freight')),
          DataCell(Text('Los Angeles, CA')),
          DataCell(Text('New York, NY')),
          DataCell(Text('02/22/2023')),
        ]),
        DataRow(cells: [
          DataCell(Text('12346')),
          DataCell(Text('Delivered')),
          DataCell(Text('Opti-Freight')),
          DataCell(Text('Los Angeles, CA')),
          DataCell(Text('New York, NY')),
          DataCell(Text('02/22/2023')),
        ]),
        DataRow(cells: [
          DataCell(Text('12347')),
          DataCell(Text('At risk')),
          DataCell(Text('Opti-Freight')),
          DataCell(Text('Los Angeles, CA')),
          DataCell(Text('New York, NY')),
          DataCell(Text('02/22/2023')),
        ]),
      ],
    ),
  );

  Widget _buildMapTab() {
    // Use a package like `flutter_map` or `google_maps_flutter` for the actual map integration
    return Center(
      child: Image.asset("assets/images/map.png"),
    );
  }

  // Build a data table to display customs status data
  final Widget _buildCustomsData = Card(
    child: DataTable(
      columns: const [
        DataColumn(label: Text('Shipment ID')),
        DataColumn(label: Text('Customs Status')),
        DataColumn(label: Text('Customs Broker')),
        DataColumn(label: Text('Broker Contact')),
        DataColumn(label: Text('Broker Phone')),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text('12345')),
          DataCell(Text('Cleared')),
          DataCell(Text('Customs Brokerage Inc.')),
          DataCell(Text('John Doe')),
          DataCell(Text('555-555-5555')),
        ]),
        DataRow(cells: [
          DataCell(Text('12346')),
          DataCell(Text('Cleared')),
          DataCell(Text('Customs Brokerage Inc.')),
          DataCell(Text('John Doe')),
          DataCell(Text('555-555-5555')),
        ]),
        DataRow(cells: [
          DataCell(Text('12347')),
          DataCell(Text('Cleared')),
          DataCell(Text('Customs Brokerage Inc.')),
          DataCell(Text('John Doe')),
          DataCell(Text('555-555-5555')),
        ]),
      ],
    ),
  );

  Widget _buildCommentsSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Comments',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TabBar(
            controller: _tabController2,
            tabs: const [
              Tab(text: 'Response needed'),
              Tab(text: 'Response provided'),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                _buildCommentItem('Samuel Ruiz', 'Customer is asking for ETA',
                    '02/21/2023 11:20'),
                _buildCommentItem('Carly Hartzman',
                    'Any updates on this shipment?', '02/20/2023 14:05'),
                _buildCommentItem('MJ Lenderman',
                    'When is this scheduled to arrive?', '02/20/2023 02:53'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentItem(String name, String message, String time) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.person)),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
    );
  }
}
