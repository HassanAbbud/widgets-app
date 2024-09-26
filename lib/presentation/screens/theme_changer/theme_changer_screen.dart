import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = "screen_changer";
  
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isDarkModeActive = ref.watch(darkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("App theme changer"),
        actions: [
          IconButton(
            onPressed: () => ref.read(darkModeProvider.notifier).update((state) => !state,), 
            icon: isDarkModeActive ? const Icon(Icons.light_mode_outlined) : const Icon(Icons.dark_mode_outlined),
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {  
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

  final List<Color> colorList = ref.watch(colorListProvider);

    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {
        final Color color = colorList[index];

        return RadioListTile( 
          title: Text("This color", style: TextStyle(color: color),),
          subtitle: Text("Color's value: ${color.value}",),
          activeColor: color,
          value: index,
          groupValue: 5,
          onChanged: (value) {  },
        );
      },
    );
  }
}