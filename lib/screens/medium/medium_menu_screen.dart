import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class MediumMenuScreen extends StatelessWidget {
  const MediumMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intermedios'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AB"),
              ),
              title: const Text('About Dialog'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AB"),
              ),
              title: const Text('Absort Pointer'),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppTheme.primary,
              ),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AC"),
              ),
              title: const Text('Action Chip'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AL"),
              ),
              title: const Text('Align'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AN"),
              ),
              title: const Text('Animated Container'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AN"),
              ),
              title: const Text('Animated List'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AN"),
              ),
              title: const Text('Animated Padding'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("AN"),
              ),
              title: const Text('Animated Switcher'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("BA"),
              ),
              title: const Text('Backdrop Filter'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("BU"),
              ),
              title: const Text('Builder'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("CH"),
              ),
              title: const Text('Choice Chip'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("CL"),
              ),
              title: const Text('Clip Rect'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("DA"),
              ),
              title: const Text('Data Table'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("DI"),
              ),
              title: const Text('Dismissible'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("DR"),
              ),
              title: const Text('Draggable'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("DR"),
              ),
              title: const Text('Draggable Scrollable Sheet'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("DR"),
              ),
              title: const Text('Dropdown Button'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("FI"),
              ),
              title: const Text('Filter Chip'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("FL"),
              ),
              title: const Text('Flexible'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("FL"),
              ),
              title: const Text('Floating Action Button'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("FL"),
              ),
              title: const Text('Flutter Logo'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("GE"),
              ),
              title: const Text('Gesture Detector'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("IN"),
              ),
              title: const Text('Indexed Stack'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("IN"),
              ),
              title: const Text('Input Chip'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("ME"),
              ),
              title: const Text('Media Query'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("PA"),
              ),
              title: const Text('Page View'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("RA"),
              ),
              title: const Text('Radio List Tile'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("RE"),
              ),
              title: const Text('Refresh Indicator'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("RO"),
              ),
              title: const Text('Rotated Box'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SA"),
              ),
              title: const Text('Safe Area'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SI"),
              ),
              title: const Text('Single Child ScrollView'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("ST"),
              ),
              title: const Text('Stepper'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("SW"),
              ),
              title: const Text('Switch List Tile'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("TA"),
              ),
              title: const Text('Tap Page Selector'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
            ),
            const Divider(
              color: AppTheme.primary,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Text("TO"),
              ),
              title: const Text('Tooltip'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary),
              onTap: () {},
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
