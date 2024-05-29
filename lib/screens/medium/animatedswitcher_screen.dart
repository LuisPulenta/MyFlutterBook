import 'package:flutter/material.dart';

class AnimatedswitcherScreen extends StatefulWidget {
  const AnimatedswitcherScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedswitcherScreen> createState() => _AnimatedswitcherScreenState();
}

class _AnimatedswitcherScreenState extends State<AnimatedswitcherScreen> {
  bool _showFirst = true; // Track which widget to display

  void _toggleWidgets() {
    setState(() {
      _showFirst = !_showFirst; // Toggle between two widgets
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(seconds: 2), // Animation duration
              child: _showFirst
                  ? Container(
                      key: const ValueKey<int>(
                          1), // Unique key for the first widget
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'Widget 1',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      key: const ValueKey<int>(
                          2), // Unique key for the second widget
                      width: 200,
                      height: 200,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'Widget 2',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleWidgets,
              child: const Text('Click Here!'),
            ),
          ],
        ),
      ),
    );
  }
}
