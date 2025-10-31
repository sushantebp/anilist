import 'package:flutter/material.dart';

class AnimeTitleSection extends StatelessWidget {
  final String? englishTitle;
  final String? nativeTitle;
  const AnimeTitleSection({super.key, this.englishTitle, this.nativeTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          englishTitle ?? nativeTitle ?? "Untitled",
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        if (englishTitle != null && nativeTitle != null)
          Text(nativeTitle!, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
