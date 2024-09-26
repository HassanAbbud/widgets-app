import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp()
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      // home: const HomeScreen(),
      // routes: {
      //   '/buttons': (context) => const ButtonsScreen(),
      //   '/cards': (context) => const CardsScreen()
      //   }
    );
  }
}
