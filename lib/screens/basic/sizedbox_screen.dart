import 'package:flutter/material.dart';

class SizedboxScreen extends StatelessWidget {
  const SizedboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sized Box'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: SizedBox(
              width: 200.0,
              height: 100.0,
              child: Card(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'SizedBox',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Row(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ), //Container
                //SizedBox Widget
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
