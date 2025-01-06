import 'package:cs_workshop_widgets_layout/about_us_page.dart';
import 'package:cs_workshop_widgets_layout/bottom_nav_bar.dart';
import 'package:cs_workshop_widgets_layout/welcome_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              debugPrint('leading icon pressed');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsPage(),
                  ));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Row(
            //   spacing: 10,
            //   children: [
            //     Image.network('https://picsum.photos/250?image=9', height: 100),
            //     Image.network('https://picsum.photos/250?image=9', height: 100),
            //     Image.network('https://picsum.photos/250?image=9', height: 100),
            //   ],
            // ),
            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Icon(Icons.calendar_month, size: 80),
            //     Icon(Icons.ev_station, size: 80),
            //     Icon(Icons.wallet, size: 80),
            //   ],
            // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                    height: 120,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'คอมพิวเตอร์ Notebook',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'MacBook Pro - CPU ใหม่ล่าสุด brings serious speed and capability to blaze through everyday activities.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.ev_station, size: 30),
                    Text('Charging date-time', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Text('12 Dec 24', style: TextStyle(fontSize: 20)),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    // color: Colors.grey,
                    color: Color(0xFFaaaaaa),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'History:',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsPage(),
                  ),
                );
              },
              child: const Text('AboutUs Page'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(),
                  ),
                );
              },
              child: const Text('Login Enter Name (welcome)'),
            ),

            // const TextField(
            //   decoration: InputDecoration(
            //     // กำหนดสไตล์รูปแบบ
            //     border: OutlineInputBorder(), // มีเส้นกรอบ
            //     labelText: 'User Name', // ข้อความกำกับ
            //     hintText: 'Enter Your Name', // ข้อความแนะนำ (Hint)
            //   ),
            // ),
            // SizedBox(height: 10, width: 10),
            // const TextField(
            //   obscureText: true, // สำหรับกรอกรหัสผ่าน
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Password',
            //     hintText: 'Enter Password',
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => BottomNavBarPage(title: 'title'),
            //         ));
            //   },
            //   child: Text('OK Submit'),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
