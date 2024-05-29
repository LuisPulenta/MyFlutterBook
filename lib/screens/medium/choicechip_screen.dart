import 'package:flutter/material.dart';

class ChoicechipScreen extends StatefulWidget {
  const ChoicechipScreen({Key? key}) : super(key: key);

  @override
  State<ChoicechipScreen> createState() => _ChoicechipScreenState();
}

class _ChoicechipScreenState extends State<ChoicechipScreen> {
  int _selectedIndex = 0;
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choice Chip'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose an item', style: textTheme.labelLarge),
            const SizedBox(height: 10.0),
            Wrap(
              spacing: 5.0,
              children: List<Widget>.generate(
                _options.length,
                (int index) {
                  return ChoiceChip(
                    label: Text(_options[index]),
                    selected: _selectedIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedIndex = (selected ? index : null)!;
                      });
                    },
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
