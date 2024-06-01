import 'package:flutter/material.dart';

class RadiolisttileScreen extends StatefulWidget {
  const RadiolisttileScreen({Key? key}) : super(key: key);

  @override
  State<RadiolisttileScreen> createState() => _RadiolisttileScreenState();
}

class _RadiolisttileScreenState extends State<RadiolisttileScreen> {
  int _selectedDefaultValue = 1;
  int _selectedDefaultValue2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListTile'),
      ),
      body: ListView(
        children: [
          RadioListTile(
            title: const Text('RadioListTile Option 1'),
            subtitle: const Text('Subtitle for Option 1'),
            value: 31, // Assign a value of 1 to this option
            groupValue:
                _selectedDefaultValue, // Use _selectedValue to track the selected option
            onChanged: (int? value) {
              setState(() {
                _selectedDefaultValue =
                    value!; // Update _selectedValue when option 1 is selected
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('RadioListTile Option 1'),
                duration: Duration(seconds: 1),
              ));
            },
          ),
          RadioListTile(
            title: const Text('RadioListTile Option 2'),
            subtitle: const Text('Subtitle for Option 2'),
            value: 22, // Assign a value of 2 to this option
            groupValue:
                _selectedDefaultValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedDefaultValue =
                    value!; // Update _selectedValue when option 2 is selected
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('RadioListTile Option 2'),
                duration: Duration(seconds: 1),
              ));
            },
          ),
          RadioListTile(
            title: const Text('RadioListTile Option 3'),
            subtitle: const Text('Subtitle for Option 3'),
            value: 43, // Assign a value of 3 to this option
            groupValue:
                _selectedDefaultValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedDefaultValue =
                    value!; // Update _selectedValue when option 3 is selected
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('RadioListTile Option 3'),
                duration: Duration(seconds: 1),
              ));
            },
          ),
          const Divider(
            color: Colors.red,
          ),
          RadioListTile(
            title: const Text('RadioListTile Option 4'),
            subtitle: const Text('Subtitle for Option 4'),
            value: 50, // Assign a value of 3 to this option
            groupValue:
                _selectedDefaultValue2, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedDefaultValue2 =
                    value!; // Update _selectedValue when option 3 is selected
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('RadioListTile Option 4'),
                duration: Duration(seconds: 1),
              ));
            },
          ),
          RadioListTile(
            title: const Text('RadioListTile Option 5'),
            subtitle: const Text('Subtitle for Option 5'),
            value: 55, // Assign a value of 3 to this option
            groupValue:
                _selectedDefaultValue2, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedDefaultValue2 =
                    value!; // Update _selectedValue when option 3 is selected
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('RadioListTile Option 5'),
                duration: Duration(seconds: 1),
              ));
            },
          ),
        ],
      ),
    );
  }
}
