import 'package:flutter/material.dart';

class MediaqueryScreen extends StatelessWidget {
  const MediaqueryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaqueryScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('MediaqueryScreen'),
      ),
    );
  }
}
