import 'package:flutter/material.dart';

class VideoplayerScreen extends StatelessWidget {
  const VideoplayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VideoplayerScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('VideoplayerScreen'),
      ),
    );
  }
}
