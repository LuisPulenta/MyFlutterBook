import 'package:flutter/material.dart';

class SafeareaScreen extends StatelessWidget {
  const SafeareaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safe Area'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            minimum: EdgeInsets.all(16.0),
            maintainBottomViewPadding: true,
            child: Text('Here\'s a visual of how to utilise SafeArea.'),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SafeArea(
              left: true,
              top: true,
              right: true,
              bottom: true,
              minimum: EdgeInsets.all(16.0),
              child: Text(
                  'My Widget: This is my widget. It has some content that I don\'t want '
                  'blocked by certain manufacturers who add notches, holes, and round corners.'),
            ),
          )
        ],
      ),
    );
  }
}
