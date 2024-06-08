import 'package:flutter/material.dart';
import 'package:myflutterbook/screens/screens.dart';
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
                      child: Text("AN"),
                    ),
                    title: const Text("Animations",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const HeroScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const AnimationiconsScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const AnimatedbuilderScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const AnimatedroundingScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const FluttercircularmenuScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const LottieScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const AnimatedtextkitScreen(),
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
                      child: Text("CH"),
                    ),
                    title: const Text("Checkers",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const CheckboxScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const RadiobuttonScreen(),
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
                      child: Text("MU"),
                    ),
                    title: const Text("Multimedia",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const ImagepickerScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const YoutubeplayerScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const ExtendedimageScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const VideoplayerScreen(),
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
                      child: Text("TI"),
                    ),
                    title: const Text("Time Pickers",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const TimepickerbasicoScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const SaynighttimepickerScreen(),
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
                      child: Text("PL"),
                    ),
                    title: const Text("Plugins",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const WebviewScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const ShareplusScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const ShimmereffectScreen(),
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
                      child: Text("ST"),
                    ),
                    title: const Text("State Management",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const ProviderScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const FlutterblocScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const StatenotifierScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const RiverpodScreen(),
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
                      child: Text("RI"),
                    ),
                    title: const Text("Rich Text",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const MarkdownrenderingScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: Text("SE"),
                          ),
                          title: const Text('Selectable Text',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          trailing: const Icon(Icons.arrow_forward_ios_outlined,
                              color: AppTheme.primary),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SelectableTextScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) =>
                                    const FluttercodehighlightScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const LocaljsonScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const CircleAvatar(
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
                                builder: (context) => const DatacallScreen(),
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
