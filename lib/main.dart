import 'package:flutter/material.dart';

import 'Screens/entry_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: Colors.white),
        primarySwatch: Colors.blue,
      ),
      home: const EntryScreen(),
    );
  }
}
