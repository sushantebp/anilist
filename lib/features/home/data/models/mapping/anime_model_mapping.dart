import 'package:anilist/features/home/data/data.dart';
import 'package:anilist/features/home/domain/domain.dart';

extension AnimeModelMapping on AnimeModel {
  AnimeEntity toEntity() => AnimeEntity(
    id: id,
    title: title,
    coverImage: coverImage,
    description: description,
    episodes: episodes,
    status: status,
  );
}
