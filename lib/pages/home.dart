import 'package:easy_dashboard/easy_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optifreight/pages/pages.dart';
import 'package:optifreight/utils/utils.dart';
import 'package:optifreight/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    EasyAppController controller = EasyAppController(
      intialBody: EasyBody(
        child: _builHome(),
        title: const Text("Home"),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          // Set a gradient background with purple and blue
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.tertiary,
              AppColors.secondary,
            ],
          ),
        ),
        child: EasyDashboard(
          body: controller.body,
          controller: controller,
          navigationIcon: const Icon(Icons.menu, color: Colors.white),
          appBarActions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
          appBarColor: AppColors.tertiary,
          sideBarColor: Colors.grey.shade100,
          tabletView: const TabletView(
            fullAppBar: false,
            border: BorderSide(width: 0.5, color: Colors.grey),
          ),
          desktopView: const DesktopView(
            fullAppBar: true,
            border: BorderSide(width: 0.5, color: Colors.grey),
          ),
          drawer: (Size size, Widget? child) {
            return EasyDrawer(
              iconColor: Colors.black.withBlue(20),
              hoverColor: Colors.grey.shade300,
              tileColor: Colors.grey.shade100,
              selectedColor: Colors.white,
              selectedIconColor: Colors.white,
              textColor: Colors.black.withBlue(20),
              selectedTileColor: AppColors.primary,
              tiles: [
                SideBarTile(
                  name: "Home",
                  body: _builHome(),
                  icon: Icons.home,
                  title: const Text("Home"),
                ),
                SideBarTile(
                  name: "Purchase Orders",
                  body: _buildPurchaseOrders(),
                  icon: FontAwesomeIcons.box,
                  title: const Text("Purchase Orders"),
                ),
                SideBarTile(
                  name: "Trips",
                  body: _buildTrips(),
                  icon: FontAwesomeIcons.truckFast,
                  title: const Text("Trips"),
                ),
                SideBarTile(
                  name: "Routes",
                  body: _buildRoutes(),
                  icon: FontAwesomeIcons.route,
                  title: const Text("Routes"),
                ),
                SideBarTile(
                  name: "OPTI Tokens",
                  body: _buildOptiTokens(),
                  icon: FontAwesomeIcons.coins,
                  title: const Text("OPTI Tokens"),
                ),
              ],
              topWidget: SideBox(
                scrollable: true,
                height: 200,
                child: Container(
                  width: 200,
                  padding: const EdgeInsets.only(top: 25),
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
              ),
              bottomWidget: SideBox(
                scrollable: false,
                height: 88,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text("Connect Wallet"),
                    icon: const Icon(FontAwesomeIcons.wallet),
                  ),
                ),
              ),
              bottomSmallWidget: const SideBox(
                height: 50,
                child: Text("Bottom Small Widget"),
              ),
              topSmallWidget: SideBox(
                height: 50,
                child: Image.asset("assets/images/icon.png"),
              ),
              size: size,
              onTileTapped: (body) {
                debugPrint("Tapped: ${body.title}");
                controller.switchBody(body);
              },
            );
          },
        ),
      ),
    );
  }

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
