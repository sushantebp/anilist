import 'package:flutter/material.dart';

class AnimeInfoRow extends StatelessWidget {
  final int? episodes;
  final String? status;
  final int? trending;
  const AnimeInfoRow({super.key, this.episodes, this.status, this.trending});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (episodes != null) Text("Episodes: $episodes"),
        if (status != null) Text("Status: $status"),
        if (trending != null) Text("Trending: $trending"),
      ],
    );
  }
}
