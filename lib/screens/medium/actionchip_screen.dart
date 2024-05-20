import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class ActionchipScreen extends StatelessWidget {
  const ActionchipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showToast(String text) => Fluttertoast.showToast(
          msg: text,
          toastLength: Toast.LENGTH_LONG,
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Action Chip'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionChip(
              label: const Text('Action chip'),
              onPressed: () {
                showToast('Action chip');
              },
            ),
            ActionChip(
              label: const Text('Action Chip Having Tooltip'),
              tooltip: 'Tooltip',
              onPressed: () {
                showToast('Action Chip Having Tooltip');
              },
            ),
            ActionChip(
              label: const Text('Action Chip With Icon'),
              avatar: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {
                showToast('Action Chip With Icon');
              },
            ),
            ActionChip(
              backgroundColor: Colors.yellow,
              label: const Text('Action Chip With Custom Color'),
              avatar: const Icon(Icons.color_lens),
              labelStyle: const TextStyle(
                color: Colors.lightBlueAccent,
              ),
              onPressed: () {
                showToast('Action Chip With Custom Color');
              },
            ),
            ActionChip(
              label: const Text('Action Chip With Elevation'),
              elevation: 10,
              pressElevation: 05,
              onPressed: () {
                showToast('Action Chip With Elevation');
              },
            )
          ],
        ),
      ),
    );
  }
}
