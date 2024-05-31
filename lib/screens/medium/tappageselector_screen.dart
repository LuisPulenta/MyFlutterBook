import 'package:flutter/material.dart';

class TappageselectorScreen extends StatefulWidget {
  const TappageselectorScreen({Key? key}) : super(key: key);

  @override
  State<TappageselectorScreen> createState() => _TappageselectorScreenState();
}

// Don't forget TickerProviderStateMixin
class _TappageselectorScreenState extends State<TappageselectorScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  // the children of the TabView
  final _tabViewChildren = [
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
      ),
    ),
    Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Shop',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'News',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
      ),
    )
  ];

  // initialize the tab controller
  @override
  void initState() {
    _tabController =
        TabController(length: _tabViewChildren.length, vsync: this);
    super.initState();
  }

//-------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Page Selector'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: TabBarView(
              controller: _tabController,
              children: _tabViewChildren,
            ),
          ),
          SizedBox(
            height: 50,
            child: TabPageSelector(
              controller: _tabController,
              indicatorSize: 20,
              selectedColor: Colors.blueAccent,
              color: Colors.orangeAccent,
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          const Text("Acá pueden ir otros Widgets"),
        ],
      ),
    );
  }
}
