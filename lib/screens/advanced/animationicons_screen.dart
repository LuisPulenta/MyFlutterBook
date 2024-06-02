import 'package:flutter/material.dart';

class AnimationiconsScreen extends StatefulWidget {
  const AnimationiconsScreen({Key? key}) : super(key: key);

  @override
  State<AnimationiconsScreen> createState() => _AnimationiconsScreenState();
}

class _AnimationiconsScreenState extends State<AnimationiconsScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isTab = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Icons'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text("Click on the buttons below"),
              IconButton(
                iconSize: 60,
                tooltip: "home_menu",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.add_event,
                  progress: _animationController,
                  color: Colors.purple,
                ),
                onPressed: () => _clickOnPressed(),
              ),
              IconButton(
                iconSize: 60,
                tooltip: "list_view",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.list_view,
                  progress: _animationController,
                ),
                onPressed: () => _clickOnPressed(),
              ),
              IconButton(
                iconSize: 60,
                tooltip: "add_event",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.add_event,
                  progress: _animationController,
                  color: Colors.lightBlue,
                ),
                onPressed: () => _clickOnPressed(),
              ),
              IconButton(
                iconSize: 60,
                tooltip: 'ellipsis_search',
                icon: AnimatedIcon(
                  icon: AnimatedIcons.ellipsis_search,
                  progress: _animationController,
                  color: Colors.red,
                ),
                onPressed: () => _clickOnPressed(),
              ),
              IconButton(
                iconSize: 60,
                tooltip: "play_pause",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _animationController,
                  color: Colors.green,
                ),
                onPressed: () => _clickOnPressed(),
              ),
              IconButton(
                iconSize: 60,
                tooltip: "arrow_menu",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.arrow_menu,
                  progress: _animationController,
                  color: Colors.lime,
                ),
                onPressed: () => _clickOnPressed(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _clickOnPressed() {
    setState(() {
      isTab = !isTab;
      isTab ? _animationController.forward() : _animationController.reverse();
    });
  }
}
