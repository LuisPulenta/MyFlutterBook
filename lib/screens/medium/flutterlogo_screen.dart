import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class FlutterlogoScreen extends StatefulWidget {
  const FlutterlogoScreen({Key? key}) : super(key: key);

  @override
  State<FlutterlogoScreen> createState() => _FlutterlogoScreenState();
}

class _FlutterlogoScreenState extends State<FlutterlogoScreen> {
  double _size = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Flutter Logo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FlutterLogo(
              size: _size,
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
            ),
            FlutterLogo(
              size: _size,
              style: FlutterLogoStyle.horizontal,
              duration: const Duration(seconds: 5),
            ),
            ElevatedButton(
              // padding: EdgeInsets.all(10),
              // color: Colors.green,
              child: const Text(
                "Change Size",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                setState(() {
                  _size += 50;
                  if (_size > 200) {
                    _size = 50.0;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
