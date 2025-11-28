// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_anime_list.var.gql.g.dart';

abstract class GGetAnimeListVars
    implements Built<GGetAnimeListVars, GGetAnimeListVarsBuilder> {
  GGetAnimeListVars._();

  factory GGetAnimeListVars(
          [void Function(GGetAnimeListVarsBuilder b) updates]) =
      _$GGetAnimeListVars;

  int? get page;
  int? get perPage;
  String? get search;
  static Serializer<GGetAnimeListVars> get serializer =>
      _$gGetAnimeListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAnimeListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAnimeListVars.serializer,
        json,
      );
}
