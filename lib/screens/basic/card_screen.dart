import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Card'),
      ),
      body: Column(
        children: const [
          Card(
            child: ListTile(
              title: Text('Simple Card-1'),
              subtitle: Text('subtitle'),
            ),
          ),
          Card(
            elevation: 06,
            child: ListTile(
              title: Text('Simple Card-2'),
              subtitle: Text('subtitle'),
            ),
          ),
          Card(
            elevation: 16,
            child: ListTile(
              title: Text('Simple Card-3'),
              subtitle: Text('subtitle'),
            ),
          ),
          Card(
            elevation: 18,
            color: Colors.orange,
            child: ListTile(
              title: Text('Simple Card-4'),
              subtitle: Text('subtitle'),
            ),
          )
        ],
      ),
    );
  }
}
