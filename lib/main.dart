import 'package:cs_workshop_widgets_layout/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'my_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        appBarTheme: const AppBarTheme(color: Colors.greenAccent),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Home Page'),
      home: const BottomNavBarPage(title: 'Home Page'),
    );
  }
}
