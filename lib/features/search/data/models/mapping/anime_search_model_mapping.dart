import 'package:anilist/features/search/search.dart';

extension AnimeSearchModelMapping on AnimeSearchModel {
  AnimeSearchEntity toEntity() => AnimeSearchEntity(
    id: id,
    titleEnglish: titleEnglish,
    coverImage: coverImage,
  );
}
