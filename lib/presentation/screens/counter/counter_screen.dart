import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    int myCounter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter screen"),
      ),

      body: Center(
        child: Text("Value: $clickCounter", style: Theme.of(context).textTheme.titleLarge), ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => myCounter++, //change to clickCounter
        child: const Icon(Icons.add)
      )
    );
  }
}