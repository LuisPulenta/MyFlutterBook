import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Row'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueGrey,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('item-1'),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                color: Colors.amber,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('item-2'),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.deepOrange,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('item-3'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
