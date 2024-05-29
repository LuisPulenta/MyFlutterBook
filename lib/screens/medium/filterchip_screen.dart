import 'package:flutter/material.dart';

class FilterchipScreen extends StatefulWidget {
  const FilterchipScreen({Key? key}) : super(key: key);

  @override
  State<FilterchipScreen> createState() => _FilterchipScreenState();
}

class _FilterchipScreenState extends State<FilterchipScreen> {
  final items = [
    "5-7 Years",
    "8-13 Years",
    "14-17 Years",
    "18+ Years",
  ];
  List<String> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FilterChip'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: items
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FilterChip(
                      selectedColor: Colors.red,
                      backgroundColor: Colors.amberAccent,
                      label: Text(e),
                      selected: selectedItem.contains(e),
                      onSelected: (bool value) {
                        if (selectedItem.contains(e)) {
                          selectedItem.remove(e);
                        } else {
                          selectedItem.add(e);
                        }
                        setState(() {});
                      }),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
