import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({Key? key}) : super(key: key);

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('PageView'),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal, // or Axis.horizontal
        children: [
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'GREEN PAGE\n'
                'Swipe UP',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.deepOrangeAccent,
            child: const Center(
              child: Text(
                'ORANGE PAGE\n'
                'Swipe UP or Down',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: const Center(
              child: Text(
                'PURPLE PAGE \n'
                'Swipe UP or Down',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            child: const Center(
              child: Text(
                'YELLOW PAGE\n'
                'Swipe Down',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
