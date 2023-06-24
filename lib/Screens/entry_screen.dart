import 'package:flutter/material.dart';

import 'All Screens/account_screen.dart';
import 'All Screens/add_screen.dart';
import 'All Screens/chat_screen.dart';
import 'All Screens/home_screen.dart';
import 'All Screens/my_ads_screen.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  int _currentIndex = 0;
  final _pages = [
    const HomeScreen(),
    const MyAdsScreen(),
    const AddScreen(),
    const ChatScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          iconSize: 40,
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (int index) {
            _currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "My Ads"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_sharp,
                ),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                ),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: "Account")
          ]),
      body: _pages[_currentIndex],
    );
  }
}
