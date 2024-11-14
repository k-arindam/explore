import 'package:get/get.dart';
import 'package:flutter/material.dart';

enum ActiveTheme {
  dark,
  light,
}

class ThemeController extends GetxController {
  final Rx<ActiveTheme> _activeTheme = ActiveTheme.dark.obs;

  static ThemeData generateTheme() {
    final theme = ThemeData.dark();

    return theme;
  }

  ActiveTheme get activeTheme => _activeTheme.value;
}
