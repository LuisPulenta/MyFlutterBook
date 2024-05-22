import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class BackdropfilterScreen extends StatefulWidget {
  const BackdropfilterScreen({Key? key}) : super(key: key);

  @override
  State<BackdropfilterScreen> createState() => _BackdropfilterScreenState();
}

class _BackdropfilterScreenState extends State<BackdropfilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Backdrop Filter'),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 400,
              ), // this is just a container with the image
              ClipRect(
                // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 100.0,
                    child: const Text('BackdropFilter'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
