import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Column'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('This is a column widget item-1'),
            const Text('This is a column widget item-2'),
            Image.asset('assets/logo.png'),
            const Text('This is a column widget item-4'),
          ],
        ),
      ),
    );
  }
}
