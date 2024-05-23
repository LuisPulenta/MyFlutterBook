import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Builder'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Showing SnackBar Builder'),
                ));
              },
              child: const Text('hasSnackBar'),
            ),
          );
        },
      ),
    );
  }
}
