import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/app_theme.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// Mutable dark mode state
final darkModeProvider = StateProvider<bool>((ref) => false,);

// Immutable color list
final colorListProvider = Provider<List<Color>>((ref) => colorList,);

final selectedIndexColorProvider = StateProvider<int>((ref) => 0);
