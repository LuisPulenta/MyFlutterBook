import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class BottomnavigationbarScreen extends StatefulWidget {
  const BottomnavigationbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomnavigationbarScreen> createState() =>
      _BottomnavigationbarScreenState();
}

class _BottomnavigationbarScreenState extends State<BottomnavigationbarScreen> {
  int currentIndex = 0;
  final screen = [
    const Center(
        child: Text(
      'Home',
      style: TextStyle(fontSize: 24),
    )),
    const Center(
        child: Text(
      'Inbox',
      style: TextStyle(fontSize: 24),
    )),
    const Center(
        child: Text(
      'Notification',
      style: TextStyle(fontSize: 24),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Notification',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) => setState(() => currentIndex = (index)),
      ),

      //body section
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Center(
          child: screen[currentIndex],
        ),
      ),
    );
  }
}
