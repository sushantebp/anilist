import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

class AnimeTrailerSection extends StatelessWidget {
  final String? site;
  const AnimeTrailerSection({super.key, this.site});

  @override
  Widget build(BuildContext context) {
    if (site == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trailer",
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppSize.spaceSmall),
        Text(site!, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}
