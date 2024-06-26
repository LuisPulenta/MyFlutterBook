import 'package:flutter/material.dart';

class AnimatedlistScreen extends StatefulWidget {
  const AnimatedlistScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedlistScreen> createState() => _AnimatedlistScreenState();
}

class _AnimatedlistScreenState extends State<AnimatedlistScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];

  void _addItem() {
    final newIndex = _items.length; // Calculate the index for the new item
    final newItem = 'Item ${newIndex + 1}'; // Create a new item

    // Update the underlying data list
    setState(() {
      _items.add(newItem);
    });

    // Insert the new item into the AnimatedList
    _listKey.currentState!.insertItem(newIndex);
  }

  void _removeItem(int index) {
    final removedItem = _items[index];

    // Remove the item from the data list
    setState(() {
      _items.removeAt(index);
    });

    // Remove the item from the AnimatedList with animation
    _listKey.currentState!.removeItem(
      index,
      (context, animation) => buildItem(removedItem, animation),
    );
  }

  Widget buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item), // Display the item's text
        trailing: IconButton(
          icon: const Icon(Icons.delete), // Display a delete icon
          onPressed: () =>
              _removeItem(_items.indexOf(item)), // Remove the item when pressed
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return buildItem(_items[index], animation);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem, // Add a new item when the FAB is pressed
        child: const Icon(Icons.add), // Display a plus icon
      ),
    );
  }
}
