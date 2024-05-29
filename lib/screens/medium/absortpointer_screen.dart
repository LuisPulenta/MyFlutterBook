import 'package:flutter/material.dart';

class AbsortpointerScreen extends StatefulWidget {
  const AbsortpointerScreen({Key? key}) : super(key: key);

  @override
  State<AbsortpointerScreen> createState() => _AbsortpointerScreenState();
}

class _AbsortpointerScreenState extends State<AbsortpointerScreen> {
  late String ntextString;

  @override
  void initState() {
    super.initState();
    setState(() {
      ntextString = 'Touch Above SizeBox';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Absort Pointer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              SizedBox(
                width: 300.0,
                height: 100.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  onPressed: () {
                    setState(() {
                      ntextString = 'You Touch Red Size box';
                    });
                  },
                  child: null,
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 200.0,
                child: AbsorbPointer(
                  absorbing: true,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                    ),
                    onPressed: () {},
                    child: null,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ntextString,
              ),
            ),
          )
        ],
      ),
    );
  }
}
