import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/domain/domain.dart';
import 'package:flutter/material.dart';

class AnimeReviewsSection extends StatelessWidget {
  final List<AnimeReviewEntity>? reviews;
  const AnimeReviewsSection({super.key, this.reviews});

  @override
  Widget build(BuildContext context) {
    if (reviews == null || reviews!.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Reviews",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppSize.spaceSmall),
        ...reviews!.map(
          (review) => Padding(
            padding: const EdgeInsets.only(bottom: AppSize.spaceMedium),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (review.user?.avatar != null)
                  CircleAvatar(
                    backgroundImage: NetworkImage(review.user!.avatar!),
                  ),
                SizedBox(width: AppSize.spaceSmall),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (review.user?.name != null)
                        Text(
                          review.user!.name!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      if (review.summary != null) Text(review.summary!),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
