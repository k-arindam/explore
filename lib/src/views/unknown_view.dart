import 'package:flutter/material.dart';

class UnknownView extends StatelessWidget {
  final String? route;

  const UnknownView({
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("You've reached an unknown route \"$route\""),
      ),
    );
  }
}
