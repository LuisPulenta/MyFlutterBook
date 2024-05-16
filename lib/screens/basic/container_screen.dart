import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Container'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: AppTheme.primary,
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                'Container',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.tealAccent,
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}
