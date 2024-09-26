import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 5,);
final darkModeProvider = StateProvider<bool>((ref) => false,);