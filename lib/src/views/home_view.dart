import 'package:explore/src/views/widgets/apple_music_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AppleMusicCard(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
