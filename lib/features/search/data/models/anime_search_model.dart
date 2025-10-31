import 'package:anilist/features/search/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_search_model.freezed.dart';

@freezed
abstract class AnimeSearchModel
    with _$AnimeSearchModel
    implements AnimeSearchEntity {
  const factory AnimeSearchModel({
    required int id,
    String? titleEnglish,
    String? coverImage,
  }) = _AnimeSearchModel;
}
