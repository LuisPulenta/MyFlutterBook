import 'package:flutter/material.dart';

class PageviewScreen extends StatelessWidget {
  const PageviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageviewScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('PageviewScreen'),
      ),
    );
  }
}
