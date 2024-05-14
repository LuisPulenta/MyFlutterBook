import 'package:flutter/material.dart';
import 'package:myflutterbook/screens/inicio/home_screen.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class AdvancedMenuScreen extends StatelessWidget {
  const AdvancedMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avanzados'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("AN"),
                    ),
                    title: const Text("Animations",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("HE"),
                          ),
                          title: const Text('Hero',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("AN"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Animation Icons',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("AN"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Animated Builder',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("AN"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Animated Rounding',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("FL"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Flutter Circular Menu',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("LO"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Lottie',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("AN"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Animated Text Kit',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("CH"),
                    ),
                    title: const Text("Checkers",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("CH"),
                          ),
                          title: const Text('Checkbox',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("RA"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Radio Button',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("MU"),
                    ),
                    title: const Text("Multimedia",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("IM"),
                          ),
                          title: const Text('Image Picker',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("YO"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('You Tube Player',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("EX"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Extended Image',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("VI"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Video Player',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("TI"),
                    ),
                    title: const Text("Time Pickers",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("TI"),
                          ),
                          title: const Text('Time Picker Básico',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("SA"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Saynight Time Picker',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("PL"),
                    ),
                    title: const Text("Plugins",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("WE"),
                          ),
                          title: const Text('Web View',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("SH"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Share Plus',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("SH"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Shimmer Effect',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("ST"),
                    ),
                    title: const Text("State Management",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("PR"),
                          ),
                          title: const Text('Provider',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("FL"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Flutter Bloc',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("ST"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('State Notifier',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("RI"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Riverpod',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.black,
                    iconColor: Colors.black,
                    leading: const CircleAvatar(
                      backgroundColor: AppTheme.primary,
                      child: Text("RI"),
                    ),
                    title: const Text("Rich Text",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("MA"),
                          ),
                          title: const Text('Markdown Rendering',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("FL"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Flutter Code Highlight',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("LO"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Local Json',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("DA"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Data Call',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppTheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
