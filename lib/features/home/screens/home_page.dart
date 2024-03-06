import 'package:flutter/material.dart';
import 'package:job_quest/features/home/screens/home_screen.dart';
import 'package:job_quest/features/message/screens/message_screen.dart';
import 'package:job_quest/features/profile/screens/profile_screen.dart';
import 'package:job_quest/features/settings/screens/settings_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});
  //creating the list of components for navigation bar items

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  var listOfScreens = [
    HomeScreen(),
    MessageScreen(),
    ProfileScreen(),
    SettingScreen()
  ];

  var currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: listOfScreens,
        index: currentPageIndex,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        // unselectedItemColor: Colors.amber,
        // selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },

        indicatorColor: Color(0xFF009688),
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.chat_rounded),
            ),
            label: 'Message',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.home)),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
