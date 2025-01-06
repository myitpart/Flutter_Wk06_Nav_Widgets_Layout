import 'package:cs_workshop_widgets_layout/about_us_page.dart';
import 'package:cs_workshop_widgets_layout/bottom_nav_bar.dart';
import 'package:cs_workshop_widgets_layout/nav_named_route.dart';
import 'package:flutter/material.dart';
import 'my_homepage.dart';
import 'nav_named_route.dart';

/*
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
      // home: const BottomNavBarPage(title: 'Home Page'),
      home: const NavNamedRoute(),
    );
  }
}
*/

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        appBarTheme: const AppBarTheme(color: Colors.greenAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Nav System'),
        // '/': (context) => BottomNavBarPage(title: 'BottomNavBar'),
        // '/': (context) => NavNamedRoute(),
        '/page1': (context) => Page1a(),
        '/page2': (context) => Page2a(),
        // '/page3': (context) => Page3a(),
        '/aboutUsPage': (context) => AboutUsPage(),
      },
      // home: const MyHomePage(title: 'Home Page'), // NO NO
    );
  }
}
