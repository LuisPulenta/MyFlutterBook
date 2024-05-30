import 'package:flutter/material.dart';

class SwitchlisttileScreen extends StatefulWidget {
  const SwitchlisttileScreen({Key? key}) : super(key: key);

  @override
  State<SwitchlisttileScreen> createState() => _SwitchlisttileScreenState();
}

class _SwitchlisttileScreenState extends State<SwitchlisttileScreen> {
  bool _isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 300,
          color: _isSwitchOn ? Colors.orangeAccent : Colors.white,
          child: Center(
            child: Text(
              _isSwitchOn ? 'Light is ON' : 'Light is OFF',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SwitchListTile(
          title: const Text('Switch List Tile'),
          value: _isSwitchOn,
          onChanged: (bool value) {
            setState(() {
              _isSwitchOn = value;
            });
          },
          secondary: const Icon(Icons.lightbulb_outline),
          // subtitle: const Text('Switch List Tile'),
        )
      ],
    );
  }
}
