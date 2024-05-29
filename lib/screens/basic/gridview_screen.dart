import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.yellow),
          title: const Text(
            'Gridview Demo',
          ),
        ),
        body: GridView(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 10),
          children: const [
            Card(
              color: Colors.orange,
            ),
            Card(
              color: Colors.orangeAccent,
            ),
            Card(
              color: Colors.brown,
            ),
            Card(
              color: Colors.red,
            ),
            Card(
              color: Colors.deepOrange,
            ),
            Card(
              color: Colors.greenAccent,
            ),
            Card(
              color: Colors.green,
            ),
            Card(
              color: Colors.lightGreenAccent,
            ),
            Card(
              color: Colors.deepPurple,
            ),
            Card(
              color: Colors.tealAccent,
            ),
            Card(
              color: Colors.blueGrey,
            ),
            Card(
              color: Colors.orange,
            ),
            Card(
              color: Colors.orangeAccent,
            ),
            Card(
              color: Colors.brown,
            ),
            Card(
              color: Colors.red,
            ),
            Card(
              color: Colors.deepOrange,
            ),
            Card(
              color: Colors.greenAccent,
            ),
            Card(
              color: Colors.green,
            ),
            Card(
              color: Colors.lightGreenAccent,
            ),
            Card(
              color: Colors.deepPurple,
            ),
            Card(
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
