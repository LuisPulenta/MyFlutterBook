import 'package:flutter/material.dart';

class TimepickerbasicoScreen extends StatefulWidget {
  const TimepickerbasicoScreen({Key? key}) : super(key: key);

  @override
  State<TimepickerbasicoScreen> createState() => _TimepickerbasicoScreenState();
}

class _TimepickerbasicoScreenState extends State<TimepickerbasicoScreen> {
  //Create TimeofDay  variable
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 0, minute: 0);

  //show time picker method
  void _showTimepicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimePicker Básico'),
        centerTitle: true,
      ),
      // backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //display the chosen time
            Text(
              _timeOfDay.format(context).toString(),
              style: const TextStyle(fontSize: 40),
            ),

            //button
            MaterialButton(
              onPressed: _showTimepicker,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'PICK TIME',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
