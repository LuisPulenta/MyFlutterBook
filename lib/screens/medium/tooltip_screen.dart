import 'package:flutter/material.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Page Selector'),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Center(
              child: Text('Long Press on Icons'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Tooltip(
                waitDuration: const Duration(seconds: 1),
                showDuration: const Duration(seconds: 2),
                padding: const EdgeInsets.all(5),
                height: 35,
                textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                message: 'My Account',
                child: const Icon(
                  Icons.account_box,
                  size: 100,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Tooltip(
                message: 'My Setting',
                child: Icon(
                  Icons.settings,
                  size: 100,
                ),
              ),
            )
          ]),
    );
  }
}
