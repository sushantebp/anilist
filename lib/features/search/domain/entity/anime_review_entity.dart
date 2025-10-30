import 'package:anilist/features/search/domain/domain.dart';

class AnimeReviewEntity {
  final AnimeReviewUserEntity? user;
  final String? summary;

  const AnimeReviewEntity({this.user, this.summary});
}
