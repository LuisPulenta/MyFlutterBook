import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlutterblocScreen extends StatefulWidget {
  const FlutterblocScreen({super.key});

  @override
  State<FlutterblocScreen> createState() => _FlutterblocScreenState();
}

class _FlutterblocScreenState extends State<FlutterblocScreen> {
  @override
  Widget build(BuildContext context) {
    Bloc.observer = const AppBlocObserver();
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlutterBloc"),
        centerTitle: true,
      ),
      body: const FlutteBlocApp(),
    );
  }
}

//----------------------------------------------------------------------------
class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) print(change);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

//----------------------------------------------------------------------------
class FlutteBlocApp extends StatelessWidget {
  const FlutteBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const BlocAppView(),
    );
  }
}

//----------------------------------------------------------------------------
class BlocAppView extends StatelessWidget {
  const BlocAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const BlocCounterPage(),
        );
      },
    );
  }
}

//----------------------------------------------------------------------------
class BlocCounterPage extends StatelessWidget {
  const BlocCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const CounterView(),
    );
  }
}

//----------------------------------------------------------------------------
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  // width: 10,
                  child: Card(
                    semanticContainer: true,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '$count',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
                const _button(),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  // width: 200,
                  child: Card(
                    semanticContainer: true,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '$count',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const _button(),
              ],
            );
          },
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------
class _button extends StatelessWidget {
  const _button();

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrementPressed());
            },
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color(0xffEBDDFF),
          elevation: 2,
          child: IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrementPressed());
            },
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color(0xffEBDDFF),
          elevation: 2,
          child: IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ),
      ],
    );
  }
}

//----------------------------------------------------------------------------
abstract class CounterEvent {}

//----------------------------------------------------------------------------
/// Notifies bloc to increment state.
class CounterIncrementPressed extends CounterEvent {}

//----------------------------------------------------------------------------
/// Notifies bloc to decrement state.
class CounterDecrementPressed extends CounterEvent {}

//----------------------------------------------------------------------------
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}

//----------------------------------------------------------------------------
class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData.light();

  static final _darkTheme = ThemeData.dark();

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
