import 'package:flutter/material.dart';

// Define your pages here (replace with your actual pages)
class Page1a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Text('This is Page 1'),
      ),
    );
  }
}

class Page2a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('This is Page 2'),
      ),
    );
  }
}

class Page3a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('This is Page 3'),
      ),
    );
  }
}

class NavNamedRoute extends StatelessWidget {
  const NavNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          children: [
            // Item 1
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
              child: Text('Go to Page 1'),
            ),
            SizedBox(height: 20),

            // Item 2
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text('Go to Page 2'),
            ),
            SizedBox(height: 20),

            // Item 3
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
              },
              child: Text('Go to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}

void mainxOK() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => NavNamedRoute(),
      '/page1': (context) => Page1a(),
      '/page2': (context) => Page2a(),
      '/page3': (context) => Page3a(),
    },
  ));
}
