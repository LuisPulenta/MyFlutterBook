import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('HeroScreen'),
      ),
    );
  }
}
