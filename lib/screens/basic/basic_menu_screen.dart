import 'package:flutter/material.dart';
import 'package:myflutterbook/screens/screens.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class BasicMenuScreen extends StatelessWidget {
  const BasicMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básicos'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AP"),
              ),
              title: const Text('AppBar'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SA"),
              ),
              title: const Text('Silver AppBar'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppTheme.primary,
              ),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SilverAppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("MA"),
              ),
              title: const Text('Material App'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MaterialAppScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SC"),
              ),
              title: const Text('Scaffold'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("CO"),
              ),
              title: const Text('Container'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("TE"),
              ),
              title: const Text('Text'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("BU"),
              ),
              title: const Text('Button'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("CO"),
              ),
              title: const Text('Column'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("RO"),
              ),
              title: const Text('Row'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("IC"),
              ),
              title: const Text('Icons'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("IM"),
              ),
              title: const Text('Image'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("LI"),
              ),
              title: const Text('List View'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("GR"),
              ),
              title: const Text('Grid View'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("ST"),
              ),
              title: const Text('Stack'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("DR"),
              ),
              title: const Text('Drawer'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("CA"),
              ),
              title: const Text('Card'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("BO"),
              ),
              title: const Text('Bottom Navigation Bar'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SG"),
              ),
              title: const Text('Silver Grid'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SL"),
              ),
              title: const Text('Silver List'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SI"),
              ),
              title: const Text('Sized Box'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppbarScreen(),
                  ),
                );
              },
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
