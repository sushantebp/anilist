import 'package:anilist/features/home/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_model.freezed.dart';

@freezed
abstract class AnimeModel with _$AnimeModel implements AnimeEntity {
  const factory AnimeModel({
    required int id,
    required String title,
    int? episodes,
    String? description,
    String? coverImage,
    String? status,
  }) = _AnimeModel;
}
