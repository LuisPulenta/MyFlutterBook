import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutterbook/screens/screens.dart';
import 'package:myflutterbook/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:myflutterbook/widgets/widgets.dart';

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
    double ancho = MediaQuery.of(context).size.width;
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
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
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BasicMenuScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: ancho,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Boton(
                        icon: FontAwesomeIcons.scaleUnbalanced,
                        texto: "Básicos",
                        color1: AppTheme.primary,
                        color2: AppTheme.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MediumMenuScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: ancho,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Boton(
                        icon: FontAwesomeIcons.scaleBalanced,
                        texto: "Intermedios",
                        color1: AppTheme.secondary,
                        color2: AppTheme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdvancedMenuScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: ancho,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Boton(
                        icon: FontAwesomeIcons.scaleUnbalancedFlip,
                        texto: "Avanzados",
                        color1: AppTheme.primary,
                        color2: AppTheme.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExamplesMenuScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: ancho,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Boton(
                        icon: FontAwesomeIcons.mobileScreen,
                        texto: "Ejemplos",
                        color1: AppTheme.secondary,
                        color2: AppTheme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
