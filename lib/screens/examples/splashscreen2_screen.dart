import 'package:flutter/material.dart';

class Splashscreen2Screen extends StatelessWidget {
  const Splashscreen2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splashscreen2Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Splashscreen2Screen'),
      ),
    );
  }
}
