import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myflutterbook/screens/screens.dart';
import 'package:myflutterbook/themes/app_theme.dart';

void main() => runApp(const MyApp());

//--------------------------------------------------------------------------
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//--------------------------------------------------------------------------
class _MyAppState extends State<MyApp> {
//--------------------------- Pantalla ----------------------------------
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter Book',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
