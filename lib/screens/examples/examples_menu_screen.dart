import 'package:flutter/material.dart';
import 'package:myflutterbook/screens/screens.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class ExamplesMenuScreen extends StatelessWidget {
  const ExamplesMenuScreen({Key? key}) : super(key: key);

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
                      child: Text("SP"),
                    ),
                    title: const Text("Splash Screen",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("SP"),
                          ),
                          title: const Text('Splash Screen 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Splashscreen1Screen(),
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
                            child: Text("SP"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Splash Screen 2',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Splashscreen2Screen(),
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
                      child: Text("LO"),
                    ),
                    title: const Text("Login",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("LO"),
                          ),
                          title: const Text('Login 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login1Screen(),
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
                          title: const Text('Login 2',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login2Screen(),
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
                      child: Text("HO"),
                    ),
                    title: const Text("Home Screen",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("HO"),
                          ),
                          title: const Text('Home Screen 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homescreen1Screen(),
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
                            child: Text("HO"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Home Screen 2',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homescreen2Screen(),
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
                      child: Text("PR"),
                    ),
                    title: const Text("Profile",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("PR"),
                          ),
                          title: const Text('Profile 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile1Screen(),
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
                            child: Text("PR"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Profile 2',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile2Screen(),
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
                      child: Text("SI"),
                    ),
                    title: const Text("Sign Up",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: AppTheme.primary,
                            child: Text("SI"),
                          ),
                          title: const Text('Sign Up 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup1Screen(),
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
                            child: Text("SI"),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          title: const Text('Sign Up 2',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup2Screen(),
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
