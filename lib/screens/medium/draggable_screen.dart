import 'package:flutter/material.dart';

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({Key? key}) : super(key: key);

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  Color dragColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Draggable(
              // Data is the value this Draggable stores.
              data: Colors.lightGreenAccent,
              onDraggableCanceled: (velocity, offset) {},
              feedback: Container(
                color: Colors.deepOrange,
                height: 100,
                width: 100,
                child: const Icon(Icons.directions_run),
              ),
              childWhenDragging: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.pinkAccent,
                child: const Center(
                  child: Text('Child When Dragging'),
                ),
              ),
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.lightGreenAccent,
                child: const Center(
                  child: Text('Draggable'),
                ),
              ),
            ),

            // building Drag Target Widget
            DragTarget(onAccept: (Color color) {
              dragColor = color;
            }, builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                width: 200,
                height: 200,
                color: accepted.isEmpty ? dragColor : Colors.grey.shade200,
                child: const Center(
                  child: Text('Drag here'),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
