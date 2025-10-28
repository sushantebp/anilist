class AnimeEntity {
  final int id;
  final String title;
  final int? episodes;
  final String? description;
  final String? coverImage;
  final String? status;

  const AnimeEntity({
    required this.id,
    required this.title,
    this.episodes,
    this.description,
    this.coverImage,
    this.status,
  });
}
