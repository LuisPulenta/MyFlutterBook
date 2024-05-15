import 'package:flutter/material.dart';

class Homescreen1Screen extends StatelessWidget {
  const Homescreen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homescreen1Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Homescreen1Screen'),
      ),
    );
  }
}
