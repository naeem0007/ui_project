import 'package:flutter/material.dart';

import '../Tab Screens/tab_one.dart';
import '../Tab Screens/tab_two.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            'My Ads',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          bottom: TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  child: Column(
                    children: const [
                      Icon(Icons.shopping_bag_outlined, color: Colors.black),
                      Text(
                        'My Cart',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        'My Favouriites',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                )
              ]),
        ),
        body: const TabBarView(children: [TabOne(), TabTwo()]),
      ),
    );
  }
}
