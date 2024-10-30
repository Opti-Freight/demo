import 'package:flutter/material.dart';
import 'package:optifreight/utils/utils.dart';

class ShippingFormPage extends StatefulWidget {
  const ShippingFormPage({super.key});

  @override
  State<StatefulWidget> createState() => _ShippingFormPageState();
}

class _ShippingFormPageState extends State<ShippingFormPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am shipping as...'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Business'),
            Tab(text: 'Personal'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Card(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildShippingForm(),
              _buildShippingForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShippingForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Source', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildCountrySelector('Mexico', 'Change Location'),
          const SizedBox(height: 5),
          _buildCityAndPostalCode('City', 'Zip Code'),
          const SizedBox(height: 20),
          const Text(
            'Destination',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildCountrySelector('Mexico', ''),
          const SizedBox(height: 5),
          _buildCityAndPostalCode('City', 'Zip Code'),
          const SizedBox(height: 20),
          _buildResidentialCheckbox(),
          const SizedBox(height: 20),
          _buildSubmitButton(),
        ],
      ),
    );
  }

  /*  Widget _buildPrivatePersonForm() {
    // This would be another form for "Persona privada" if needed
    return const Center(
      child: Text('Formulario para Persona privada'),
    );
  } */

  Widget _buildCountrySelector(String country, String changeLocationText) {
    return Row(
      children: [
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_Mexico_%28Pantone%29.png',
          width: 150,
          height: 50,
        ),
        const SizedBox(width: 5),
        Text(country),
        const Spacer(),
        if (changeLocationText.isNotEmpty)
          Text(
            changeLocationText,
            style: const TextStyle(color: Colors.red),
          ),
      ],
    );
  }

  Widget _buildCityAndPostalCode(String city, String postalCode) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'City',
              hintText: city,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Zip Code',
              hintText: postalCode,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResidentialCheckbox() {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        const Text('This is a residential address'),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      ),
      child: const Text(
        'Describe your shipment',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
