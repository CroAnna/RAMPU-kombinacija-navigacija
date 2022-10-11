import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;

  final pages = [
    const Center(
      child: TabNav(),
    ),
    const Center(child: Text("User")),
    const Center(child: Text("Buy")),
    const Center(child: Text("Settings"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "User",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Buy",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.deepPurple),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

class TabNav extends StatefulWidget {
  const TabNav({super.key});

  @override
  State<TabNav> createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Tab Navigation Bar"),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "Home",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "User",
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    text: "Buy",
                    icon: Icon(Icons.shopping_cart),
                  ),
                  Tab(
                    text: "Settings",
                    icon: Icon(Icons.settings),
                  ),
                  Tab(
                    text: "Card",
                    icon: Icon(Icons.card_membership),
                  ),
                  Tab(
                    text: "Logout",
                    icon: Icon(Icons.logout),
                  )
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Center(child: Text("Home")),
                Center(child: Text("User")),
                Center(child: Text("Buy")),
                Center(child: Text("Settings")),
                Center(child: Text("Cards")),
                Center(child: Text("Logout"))
              ],
            )));
  }
}
