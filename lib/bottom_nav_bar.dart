// Bottom Navigation Bar including 3 pages
// must be stateful because of updateing index tab

import 'package:cs_workshop_widgets_layout/about_us_page_for_bottomnavbar.dart';
import 'package:cs_workshop_widgets_layout/my_homepage.dart';
import 'package:cs_workshop_widgets_layout/welcome_page.dart';
import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  // final String title;

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetPages = [
    // Text('Home'),
    MyHomePage(title: 'Home'),
    WelcomePage(),
    AboutUsPageForBottomNavBar(),
    // Page1(),
    // Text('Search'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('myapp'),
      ),
      body: Center(
        child: _widgetPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Customize selected item color
        onTap: _onItemTapped,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/icon_battery_square.png');
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          obscureText: true, // สำหรับกรอกรหัสผ่าน
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            hintText: 'Enter Password',
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('OK Submit'),
        ),
      ],
    );
  }
}
