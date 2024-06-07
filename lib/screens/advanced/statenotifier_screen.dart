import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class StatenotifierScreen extends StatefulWidget {
  const StatenotifierScreen({super.key});

  @override
  State<StatenotifierScreen> createState() => _StatenotifierScreenState();
}

class _StatenotifierScreenState extends State<StatenotifierScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Logger>(create: (_) => ConsoleLogger()),
        StateNotifierProvider<MyStateNotifier, MyState>(
          create: (_) => MyStateNotifier(),
          // Override MyState to make it animated
          builder: (context, child) {
            return TweenAnimationBuilder<MyState>(
              duration: const Duration(milliseconds: 500),
              tween: MyStateTween(end: context.watch<MyState>()),
              builder: (context, state, _) {
                return Provider.value(value: state, child: child);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("StateNotifier"),
          centerTitle: true,
        ),
        body: const MyHomePage2(),
      ),
    );
  }
}

class MyStateTween extends Tween<MyState> {
  MyStateTween({super.begin, super.end});

  @override
  MyState lerp(double t) {
    final countTween = IntTween(begin: begin?.count, end: end?.count);
    // Tween the count
    return MyState(
      countTween.lerp(t),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              context.select((MyState value) => value.count).toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.watch<MyStateNotifier>().increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

abstract class Logger {
  void countChanged(int count);
}

class MyState {
  MyState(this.count);
  final int count;
}

class MyStateNotifier extends StateNotifier<MyState> with LocatorMixin {
  MyStateNotifier() : super(MyState(0));

  void increment() {
    state = MyState(state.count + 1000);
  }

  @override
  @protected
  set state(MyState value) {
    if (state.count != value.count) {
      read<Logger>().countChanged(value.count);
    }
    super.state = value;
  }
}

/// A simple [Logger] using [print]
class ConsoleLogger implements Logger {
  @override
  void countChanged(int count) {
    // ignore: avoid_print
    print('Count changed $count');
  }
}


//**************************************************//
                  // *** END ***//
                  // Flutter Book //
//**************************************************//