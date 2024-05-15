import 'package:flutter/material.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProviderScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ProviderScreen'),
      ),
    );
  }
}
