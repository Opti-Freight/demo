import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optifreight/pages/pages.dart';
import 'package:optifreight/utils/utils.dart';
import 'package:optifreight/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* Variables and Services
  int _selectedIndex = 0;
  final NavigationRailLabelType _labelType = NavigationRailLabelType.none;
  double groupAlignment = -1;
  final EdgeInsets _paddingIcons = const EdgeInsets.only(top: 15);

  //* Widget Root

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      _builHome(),
      _buildPurchaseOrders(),
      _buildTrips(),
      _buildRoutes(),
      _buildOptiTokens(),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Row(
        children: [
          NavigationRail(
            indicatorColor: AppColors.primary,
            elevation: 10,
            backgroundColor: AppColors.white,
            selectedIndex: _selectedIndex,
            groupAlignment: groupAlignment,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: _labelType,
            leading: SizedBox(
              width: 80,
              child: Image.asset(
                "assets/images/icon.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            destinations: [
              NavigationRailDestination(
                padding: _paddingIcons,
                icon: const Icon(
                  FontAwesomeIcons.house,
                  color: AppColors.black,
                ),
                selectedIcon: const Icon(
                  FontAwesomeIcons.house,
                  color: AppColors.white,
                ),
                label: const Text("Home"),
              ),
              NavigationRailDestination(
                padding: _paddingIcons,
                icon: const Icon(
                  FontAwesomeIcons.truck,
                  color: AppColors.black,
                ),
                selectedIcon: const Icon(
                  FontAwesomeIcons.truck,
                  color: AppColors.white,
                ),
                label: const Text("Jobs"),
              ),
              NavigationRailDestination(
                padding: _paddingIcons,
                icon: const Icon(
                  FontAwesomeIcons.route,
                  color: AppColors.black,
                ),
                selectedIcon: const Icon(
                  FontAwesomeIcons.route,
                  color: AppColors.white,
                ),
                label: const Text("Routes"),
              ),
              NavigationRailDestination(
                padding: _paddingIcons,
                icon: const Icon(
                  Icons.token,
                  color: AppColors.black,
                  size: 30,
                ),
                selectedIcon: const Icon(
                  Icons.token,
                  color: AppColors.white,
                  size: 30,
                ),
                label: const Text("OPTI Tokens"),
              ),
            ],
            trailing: Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 13.0),
                  child: Card(
                    color: AppColors.black,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(
                          13,
                        ), // Adjust the radius as needed
                      ),
                      child: IconButton(
                        iconSize: 30,
                        icon: const Icon(
                          Icons.wallet,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: pages[_selectedIndex],
          )
        ],
      ),
    );
  }

//* Widget builds

  Widget _builHome() {
    return ListView(
      children: const [
        SizedBox(height: 50),
        OnboardingPage(),
      ],
    );
  }

  Widget _buildPurchaseOrders() {
    return const Center(
      child: ShippingFormPage(),
    );
  }

  Widget _buildTrips() {
    return const TripsPage();
  }

  Widget _buildRoutes() {
    return const Center(
      child: Text("Routes"),
    );
  }

  Widget _buildOptiTokens() {
    return const Center(
      child: Text("OPTI Tokens"),
    );
  }
}
