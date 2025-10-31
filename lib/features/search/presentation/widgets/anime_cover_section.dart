import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

class AnimeCoverSection extends StatelessWidget {
  final String? imageUrl;
  const AnimeCoverSection({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) return const SizedBox();

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.radiusLarge),
        child: Image.network(imageUrl!, fit: BoxFit.cover),
      ),
    );
  }
}
