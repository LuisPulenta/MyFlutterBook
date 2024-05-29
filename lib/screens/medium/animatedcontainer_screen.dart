import 'package:flutter/material.dart';

class AnimatedcontainerScreen extends StatefulWidget {
  const AnimatedcontainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedcontainerScreen> createState() =>
      _AnimatedcontainerScreenState();
}

class _AnimatedcontainerScreenState extends State<AnimatedcontainerScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,
                height: selected ? 300.0 : 600.0,
                color: selected ? Colors.red : Colors.blue,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: const Text('Click To Animate'))
        ],
      ),
    );
  }
}
