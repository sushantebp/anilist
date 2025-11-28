// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_by_id.var.gql.g.dart';

abstract class GAnimeByIdVars
    implements Built<GAnimeByIdVars, GAnimeByIdVarsBuilder> {
  GAnimeByIdVars._();

  factory GAnimeByIdVars([void Function(GAnimeByIdVarsBuilder b) updates]) =
      _$GAnimeByIdVars;

  int get id;
  static Serializer<GAnimeByIdVars> get serializer =>
      _$gAnimeByIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdVars.serializer,
        json,
      );
}
