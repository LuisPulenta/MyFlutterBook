import 'package:myflutterbook/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//---------------------------------------------------------------
//----------------------- Variables -----------------------------
//---------------------------------------------------------------

  String direccion = '';

//---------------------------------------------------------------
//----------------------- initState -----------------------------
//---------------------------------------------------------------

  @override
  void initState() {
    super.initState();
  }

//---------------------------------------------------------------
//----------------------- Pantalla ------------------------------
//---------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter Book'),
        centerTitle: true,
      ),
      body: _getBody(),
    );
  }

//---------------------------------------------------------------
//----------------------- _getBody ------------------------------
//---------------------------------------------------------------
  Widget _getBody() {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 60),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/logo.png",
              height: 100,
              width: 500,
            ),
            const SizedBox(
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
