import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppTheme.primary,
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: _showToast,
              child: const Text('Text Button'),
            ),

            //ElevatedButton
            ElevatedButton(
              onPressed: _showtext,
              child: const Text('Elevated Button'),
            ),

            //Icon Button
            IconButton(
                tooltip: 'Icon Button',
                onPressed: _showtext,
                icon: const Icon(
                  Icons.sms_failed_outlined,
                  color: Colors.red,
                  size: 35.0,
                )),

            RawMaterialButton(
              onPressed: _showtext,
              shape: const CircleBorder(),
              elevation: 2,
              splashColor: Colors.transparent,
              fillColor: Colors.blue,
              highlightColor: Colors.transparent,
              child: const Icon(
                Icons.play_arrow_outlined,
                size: 30,
              ),
            ),

            BackButton(
              onPressed: _showtext,
            ),

            CloseButton(
              onPressed: _showtext,
            ),

            Material(
              color: Colors.tealAccent,
              child: InkWell(
                onTap: _showtext,
                child: const SizedBox(
                  width: 100.0,
                  height: 50.0,
                  child: Center(child: Text('Tap Here')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//---------------------------------------------------------------------------
  void _showToast() => Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);

//---------------------------------------------------------------------------
  _showtext() => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Button Tapped"),
        duration: Duration(milliseconds: 300),
      ));
}
