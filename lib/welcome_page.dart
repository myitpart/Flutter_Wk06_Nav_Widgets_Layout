import 'package:cs_workshop_widgets_layout/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'display_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

// ws05 v4 - add initState, Textfield, display when click
class _WelcomePageState extends State<WelcomePage> {
  String _output = ''; // double single quote or ""
  final _textController = TextEditingController(); // **

  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    _output = 'Enter your name';
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Hello, Welcome Page (Stateful)',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Name',
              ),
            ),
            Text(
              '${_output}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
                onPressed: () {
                  String input = _textController.text;
                  int inputAge = 18;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPage(
                        // name: input, //  pass data to DisplayPage
                        age: inputAge,
                      ),
                    ),
                  );

                  // debugPrint('pressed button');
                  // debugPrint('Input: $input');
                  // setState(() {
                  //   // _output = 'Kobkiat s.., good job';
                  //   _output = 'you are $input \n good job';
                  // });
                },
                child: Text(
                  'Click me',
                  style: TextStyle(fontSize: 18),
                )),
            ElevatedButton(
                onPressed: () {
                  String input = _textController.text;
                  int inputAge = 18;

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPage(
                        name: 'ksb',
                        age: 18,
                      ),
                      // builder: (context) => BottomNavBarPage(),
                    ),
                    (route) => false,
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}

// ws04 - v3 - click to display text
/* class _WelcomePageState extends State<WelcomePage> {
  String _output = ''; // double single quote or ""

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Hello, Welcome Page (Stateful)',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '${_output}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint('pressed button');
                  setState(() {
                    _output = 'Kobkiat s.., good job';
                  });
                },
                child: Text(
                  'Click me',
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
} */

// ws04 - v1 only text
/*

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Welcome Page'),
      ),
      body: const Center(
        child: Text('Hello, Welcome Page (Stateful)'),
      ),
    );
  }
}

*/
