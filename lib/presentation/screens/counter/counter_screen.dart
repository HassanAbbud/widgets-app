import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    int myCounter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter screen"),
      ),

      body: Center(
        child: Text("Value $myCounter", style: Theme.of(context).textTheme.titleLarge), ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => myCounter++,
        child: const Icon(Icons.add)
      )
    );
  }
}