import 'package:flutter/material.dart';

class AnimePopularity extends StatelessWidget {
  final int? popularity;
  const AnimePopularity({super.key, this.popularity});

  @override
  Widget build(BuildContext context) {
    if (popularity == null) return const SizedBox.expand();
    return Text("Popularity: $popularity");
  }
}
