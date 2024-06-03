import 'package:flutter/material.dart';

class RadiobuttonScreen extends StatefulWidget {
  const RadiobuttonScreen({Key? key}) : super(key: key);

  @override
  State<RadiobuttonScreen> createState() => _RadiobuttonScreenState();
}

enum SingingCharacter { nbutton, nbutton2 }

class _RadiobuttonScreenState extends State<RadiobuttonScreen> {
  SingingCharacter? _character = SingingCharacter.nbutton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioButton'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('True'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.nbutton,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('False'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.nbutton2,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
