import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // This is a stream that shows how many seconds have elapsed.
        StreamProvider<int>(
          initialData: 0,
          create: (BuildContext context) =>
              Stream.periodic(const Duration(milliseconds: 500), (i) => i),
        ),
        ChangeNotifierProvider<_CounterState>(
          create: (_) => _CounterState(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Provider"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _ProviderDemoApp(),
        ),
      ),
    );
  }
}

//---------------------------------------------------------------------------
// ###1. Define a state class, extending from ChangeNotifier.
class _CounterState extends ChangeNotifier {
  int _counter = 0;

  int get counterValue => _counter;

  void incrementCounter() {
    _counter++;
    // Must add notifyListeners() when UI need to be changed.
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}

//---------------------------------------------------------------------------
class _ProviderDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _ProviderRootWidget(),
      ],
    );
  }
}

//---------------------------------------------------------------------------
class _ProviderRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Text('${Provider.of<int>(context)} seconds elapsed'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _ShowCounterNumber(),
              const Align(
                child: _button(),
              ),
              const SizedBox(
                height: 20,
              ),
              _ShowCounterNumber(),
              const Align(
                alignment: Alignment.center,
                child: _button(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//---------------------------------------------------------------------------
class _ShowCounterNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<_CounterState>(context, listen: false);
    return Card(
      margin: const EdgeInsets.all(4.0).copyWith(top: 32.0, bottom: 32.0),
      color: Colors.white70,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: 100,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '${state.counterValue}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          // _button(),
        ],
      ),
    );
  }
}

//---------------------------------------------------------------------------
class _button extends StatefulWidget {
  const _button();

  @override
  State<_button> createState() => _buttonState();
}

//---------------------------------------------------------------------------
class _buttonState extends State<_button> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<_CounterState>(context, listen: false);
    return ButtonBar(
      children: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () => state.incrementCounter(),
        ),
        Consumer<_CounterState>(
          builder: (BuildContext context, _CounterState value, Widget? child) {
            return IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => value.decrementCounter(),
            );
          },
        ),
      ],
    );
  }
}
