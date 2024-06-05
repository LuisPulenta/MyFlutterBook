import 'package:flutter/material.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class SaynighttimepickerScreen extends StatefulWidget {
  const SaynighttimepickerScreen({Key? key}) : super(key: key);

  @override
  State<SaynighttimepickerScreen> createState() =>
      _SaynighttimepickerScreenState();
}

class _SaynighttimepickerScreenState extends State<SaynighttimepickerScreen> {
  Time _Ntime = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;

  void onTimeChanged(Time newTime) {
    setState(() {
      _Ntime = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SayNight TimePicker'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Popup Picker Style",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "${_Ntime.hour}:${_Ntime.minute}:${_Ntime.second} ${_Ntime.period.name}"
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      showPicker(
                        showSecondSelector: true,
                        context: context,
                        value: _Ntime,
                        onChange: onTimeChanged,
                        minuteInterval: TimePickerInterval.ONE,
                        // Optional onChange to receive value as DateTime
                        onChangeDateTime: (DateTime dateTime) {
                          // print(dateTime);
                          debugPrint("[debug datetime]:  $dateTime");
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Open time picker",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Text(
                  "Inline Picker Style",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                // Render inline widget
                showPicker(
                  isInlinePicker: true,
                  elevation: 1,
                  value: _Ntime,
                  onChange: onTimeChanged,
                  minuteInterval: TimePickerInterval.ONE,
                  iosStylePicker: iosStyle,
                  minHour: 0,
                  maxHour: 23,
                  is24HrFormat: false,
                ),
                Text(
                  "IOS Style",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Switch(
                  value: iosStyle,
                  onChanged: (newVal) {
                    setState(() {
                      iosStyle = newVal;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
