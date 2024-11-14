import 'package:explore/src/views/home_view.dart';
import 'package:explore/src/views/unknown_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoute {
  static const String home = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());

      default:
        return MaterialPageRoute(builder: (_) => UnknownView(route: route));
    }
  }
}
