import 'package:flutter/material.dart';

class RotatedboxScreen extends StatelessWidget {
  const RotatedboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotatedbox'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Container(
                  color: Colors.purpleAccent,
                  child: const Text('Flutter Book!')),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Container(
                  color: Colors.orangeAccent,
                  child: const Text('Flutter Book!')),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                  color: Colors.deepOrange, child: const Text('Flutter Book!')),
            ),
            RotatedBox(
              quarterTurns: 4,
              child: Container(
                  color: Colors.greenAccent,
                  child: const Text('Flutter Book!')),
            ),
          ],
        ),
      ),
    );
  }
}


//**************************************************//
                // *** END ***//
                // Flutter Book //
//**************************************************//