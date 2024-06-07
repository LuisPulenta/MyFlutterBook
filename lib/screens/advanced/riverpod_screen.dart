import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodScreen extends StatelessWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Adding ProviderScope enables Riverpod for the entire project
    return const ProviderScope(child: MyHomePage());
  }
}

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

//----------------------------------------------------------------------
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: Card(
              child: Center(
                child: Text(
                  'Value: $value',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const _button(),
        ],
      ),
    );
  }
}

//----------------------------------------------------------------------
class _button extends ConsumerWidget {
  const _button();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var value = ref.watch(counterStateProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color(0xffEBDDFF),
          elevation: 2,
          child: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => ref.read(counterStateProvider.state).state++,
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color(0xffEBDDFF),
          elevation: 2,
          child: IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () => ref.read(counterStateProvider.state).state--,
          ),
        ),
      ],
    );
  }
}
