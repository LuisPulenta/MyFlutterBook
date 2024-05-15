import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListviewScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ListviewScreen'),
      ),
    );
  }
}
