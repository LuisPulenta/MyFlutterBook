import 'package:flutter/material.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        //Appbar
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text('AppBar Demo'),
          actions: [
            Container(
              margin: const EdgeInsets.all(05),
              child: const Icon(Icons.notifications),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: const Icon(Icons.info_outline_rounded),
            )
          ],
        ),

        body: const Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
