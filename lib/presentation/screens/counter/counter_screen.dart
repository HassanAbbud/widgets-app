import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    // final bool isDarkModeActive = ref.watch(darkModeProvider);
    final bool isDarkModeActive = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter screen"),
      actions: [
        IconButton(
          onPressed: () => ref.read(themeNotifierProvider.notifier).toggleDarkMode(), 
          icon: isDarkModeActive ? const Icon(Icons.light_mode_outlined) : const Icon(Icons.dark_mode_outlined),  
        )
      ],
      ),

      body: Center(
        child: Text("Value: $clickCounter", style: Theme.of(context).textTheme.titleLarge), ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++, //change to clickCounter
        child: const Icon(Icons.add)
      )
    );
  }
}