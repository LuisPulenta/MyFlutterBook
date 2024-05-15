import 'package:flutter/material.dart';

class Splashscreen1Screen extends StatelessWidget {
  const Splashscreen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splashscreen1Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Splashscreen1Screen'),
      ),
    );
  }
}
