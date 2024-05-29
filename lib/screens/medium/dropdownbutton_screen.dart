import 'package:flutter/material.dart';

class DropdownbuttonScreen extends StatefulWidget {
  const DropdownbuttonScreen({Key? key}) : super(key: key);

  @override
  State<DropdownbuttonScreen> createState() => _DropdownbuttonScreenState();
}

class _DropdownbuttonScreenState extends State<DropdownbuttonScreen> {
// Initial Selected Value
  String dropdownItem = 'Dropdown Item 1';

// List of items in our dropdown menu
  var items = [
    'Dropdown Item 1',
    'Dropdown Item 2',
    'Dropdown Item 3',
    'Dropdown Item 4',
    'Dropdown Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              // Initial Value
              value: dropdownItem,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownItem = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
