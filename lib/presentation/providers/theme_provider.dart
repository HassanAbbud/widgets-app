import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/app_theme.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final darkModeProvider = StateProvider<bool>((ref) => false,);

final colorListProvider = Provider<List<Color>>((ref) => colorList,);
