import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class InputchipScreen extends StatefulWidget {
  const InputchipScreen({Key? key}) : super(key: key);

  @override
  State<InputchipScreen> createState() => _InputchipScreenState();
}

class _InputchipScreenState extends State<InputchipScreen> {
  int inputs = 2;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Input Chip'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 5.0,
            children: List.generate(
              inputs,
              (int index) {
                return InputChip(
                  label: Text('Person ${index + 1}'),
                  selected: selectedIndex == index,
                  onSelected: (bool selected) {
                    setState(() {
                      if (selectedIndex == index) {
                        selectedIndex = null;
                      } else {
                        selectedIndex = index;
                      }
                    });
                  },
                  onDeleted: () {
                    setState(() {
                      inputs = inputs - 1;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Input Deleted!'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  selectedColor: Colors.greenAccent,
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
