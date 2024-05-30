import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentindex = 0;

  List<Step> listSteps = <Step>[
    Step(
        title: const Text('Step 1 title'),
        content: Container(
          alignment: Alignment.centerLeft,
          child: const Text('Content for Step 1'),
        ),
        isActive: true),
    Step(
      title: const Text('Step 2 title'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: const Text('Content for Step 2'),
      ),
    ),
    Step(
      title: const Text('Step 3 title'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: const Text('Content for Step 3'),
      ),
    ),
    Step(
      title: const Text('Step 4 title'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: const Text('Content for Step 4'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Stepper(
        steps: listSteps,
        currentStep: _currentindex,
        onStepCancel: () {
          if (_currentindex > 0) {
            setState(() {
              _currentindex -= 1;
            });
          }
        },
        onStepContinue: () {
          if (_currentindex < listSteps.length - 1) {
            setState(() {
              _currentindex = _currentindex + 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
