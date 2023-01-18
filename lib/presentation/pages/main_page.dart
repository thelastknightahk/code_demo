import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/presentation/pages/inventory/inventory_page.dart';
import 'package:easiest_shop/presentation/pages/profile/profile.dart';
import 'package:easiest_shop/presentation/pages/purchase/purchase_page.dart';
import 'package:easiest_shop/presentation/pages/report/report_page.dart';
import 'package:easiest_shop/presentation/pages/sale/sale_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _bodyPages = [
    const InventoryPage(),
    const SalePage(),
    const PurchasePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _bodyPages[_selectedIndex]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: AppColor.primaryColor,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black45,
              tabs: const [
                GButton(
                  icon: Icons.inventory,
                  text: 'Inventory',
                ),
                GButton(
                  icon: Icons.sell,
                  text: 'Sale',
                ),
                GButton(
                  icon: Icons.shopping_basket,
                  text: 'Purchase',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
