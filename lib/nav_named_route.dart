import 'package:cs_workshop_widgets_layout/my_homepage.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => MyHomePage(title: 'title'),
                //     ));
                Navigator.pushNamed(context, '/aboutUsPage');
              },
              child: Text('AboutUs Page3 '),
            ),
            const Card(
              color: Colors.amberAccent,
              child: ListTile(
                leading: Icon(Icons.hub_sharp),
                title: Text('Dust PM2.5 report'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            // InkWell(
            //   onTap: () => Navigator.pushNamed(context, '/page3'),
            //   child: Container(
            //     width: 200,
            //     margin: EdgeInsets.all(10),
            //     padding: EdgeInsets.all(8),
            //     decoration: const BoxDecoration(
            //       color: Colors.blue,
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Color(0xFFaaaaaa),
            //           spreadRadius: 2,
            //           blurRadius: 6,
            //           offset: Offset(0, 0),
            //         )
            //       ],
            //     ),
            //     alignment: Alignment.center,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(
            //           Icons.history,
            //           size: 30,
            //         ),
            //         SizedBox(
            //           width: 20,
            //         ),
            //         const Text(
            //           textAlign: TextAlign.center,
            //           'History',
            //           style: TextStyle(fontSize: 20, color: Colors.white),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
