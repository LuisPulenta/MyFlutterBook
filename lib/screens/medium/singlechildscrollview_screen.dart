import 'package:flutter/material.dart';

class SinglechildscrollviewScreen extends StatelessWidget {
  const SinglechildscrollviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SinglechildscrollviewScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('SinglechildscrollviewScreen'),
      ),
    );
  }
}
