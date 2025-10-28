import 'package:flutter/material.dart';

import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/domain/domain.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.anime});

  final AnimeEntity anime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: anime.coverImage != null && anime.coverImage!.isNotEmpty
              ? Image.network(anime.coverImage!, fit: BoxFit.cover)
              : Container(
                  color: context.colorScheme.surface.withValues(alpha: 0.2),
                  child: const Icon(Icons.image_not_supported, size: 40),
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            anime.title,
            style: context.textTheme.titleMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
