import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String name;
  final int? age;

  const DisplayPage({super.key, required this.name, this.age});
  // const DisplayPage({super.key,this.age,  this.name});
  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Display Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            Text(
              'Hi, ${widget.name} \nAge: ${widget.age}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            (Navigator.canPop(context)) ? ElevatedButton(
              onPressed: () {
                  Navigator.pop(context);

              },
              child: Text(
                'Back',
                style: TextStyle(fontSize: 18),
              ),
            ):const SizedBox.shrink(),
            // ElevatedButton(
            //   onPressed: () {
            //     if (Navigator.canPop(context)) {
            //       Navigator.pop(context);
            //     }
            //   },
            //   child: Text(
            //     'Back',
            //     style: TextStyle(fontSize: 18),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
