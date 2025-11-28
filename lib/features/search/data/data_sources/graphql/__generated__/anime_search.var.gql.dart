// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_search.var.gql.g.dart';

abstract class GAnimeSearchVars
    implements Built<GAnimeSearchVars, GAnimeSearchVarsBuilder> {
  GAnimeSearchVars._();

  factory GAnimeSearchVars([void Function(GAnimeSearchVarsBuilder b) updates]) =
      _$GAnimeSearchVars;

  String? get search;
  int? get page;
  int? get perPage;
  static Serializer<GAnimeSearchVars> get serializer =>
      _$gAnimeSearchVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeSearchVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeSearchVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeSearchVars.serializer,
        json,
      );
}
