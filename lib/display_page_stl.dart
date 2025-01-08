import 'package:flutter/material.dart';

class DisplayPageStl extends StatelessWidget {
  final String? name;
  final int? age;
  const DisplayPageStl({super.key, required String this.name, required int this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Disply Page Stateless'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            Text(
              'Hi, ${name} \nAge: ${age}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Hi, ${name != "" ? name:'none'} \nAge: ${age}',
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
