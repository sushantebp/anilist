

import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

class AnimeGenres extends StatelessWidget {
  final List<String>? genres;
  const AnimeGenres({super.key, this.genres});

  @override
  Widget build(BuildContext context) {
    if (genres == null || genres!.isEmpty) return const SizedBox();
    return Wrap(
      spacing: AppSize.spaceSmall,
      children: genres!.map((g) => Chip(label: Text(g))).toList(),
    );
  }
}
