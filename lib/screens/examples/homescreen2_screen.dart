import 'package:flutter/material.dart';

class Homescreen2Screen extends StatelessWidget {
  const Homescreen2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homescreen2Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Homescreen2Screen'),
      ),
    );
  }
}
