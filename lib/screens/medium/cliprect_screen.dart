import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class CliprectScreen extends StatefulWidget {
  const CliprectScreen({Key? key}) : super(key: key);

  @override
  State<CliprectScreen> createState() => _CliprectScreenState();
}

class _CliprectScreenState extends State<CliprectScreen> {
  double _size = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('ClipRect'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_size),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Center(
                  child: FlutterLogo(
                    size: _size + 10,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Slider(
              value: _size,
              activeColor: Theme.of(context).primaryColor,
              inactiveColor:
                  Theme.of(context).primaryColorDark.withOpacity(0.5),
              min: 0.0,
              max: 100.0,
              divisions: 100,
              onChanged: (double value) {
                setState(() {
                  _size = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
