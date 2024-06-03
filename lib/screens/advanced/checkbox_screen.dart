import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({Key? key}) : super(key: key);

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool isChecked = false;
  // ignore: non_constant_identifier_names
  bool Check = true;
  bool ncheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.red,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                        ncheck = value;
                      });
                    }),
                CheckboxListTile(
                    value: isChecked,
                    title: const Text('Tea'),
                    subtitle: const Text('Cold or Green'),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                CheckboxListTile(
                    value: ncheck,
                    title: const Text('Tea'),
                    subtitle: const Text('Cold or Green'),
                    onChanged: (bool? value) {
                      setState(() {
                        ncheck = value!;
                      });
                    }),
                CheckboxListTile(
                    value: isChecked,
                    title: const Text('Tea'),
                    subtitle: const Text('Cold or Green'),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                CheckboxListTile(
                    value: ncheck,
                    title: const Text('Tea'),
                    subtitle: const Text('Cold or Green'),
                    onChanged: (bool? value) {
                      setState(() {
                        ncheck = value!;
                      });
                    }),
                CheckboxListTile(
                    value: isChecked,
                    title: const Text('Tea'),
                    subtitle: const Text('Cold or Green'),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    })
              ],
            ),
          ],
        ));
  }
}
