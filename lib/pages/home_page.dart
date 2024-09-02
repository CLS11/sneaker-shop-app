import 'package:flutter/material.dart';
import 'package:myapp/components/bottom_navigation_bar.dart';
import 'package:myapp/pages/cart_page.dart';
import 'package:myapp/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //tracking the selected index to control the navigation bar
  int _selectedIndex = 0;

  //updating selected index whenever cart is tapped
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //displaying pages
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //logo
            DrawerHeader(
              child: Image.asset(
                'lib/images/logo2.png',
                color: Colors.white,
              ),
            ),

            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(color: Colors.grey[800])
            ),
            //otherpages
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
