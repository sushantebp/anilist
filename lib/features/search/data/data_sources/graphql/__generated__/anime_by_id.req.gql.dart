// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/serializers.gql.dart' as _i6;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.ast.gql.dart'
    as _i5;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.data.gql.dart'
    as _i2;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'anime_by_id.req.gql.g.dart';

abstract class GAnimeByIdReq
    implements
        Built<GAnimeByIdReq, GAnimeByIdReqBuilder>,
        _i1.OperationRequest<_i2.GAnimeByIdData, _i3.GAnimeByIdVars> {
  GAnimeByIdReq._();

  factory GAnimeByIdReq([void Function(GAnimeByIdReqBuilder b) updates]) =
      _$GAnimeByIdReq;

  static void _initializeBuilder(GAnimeByIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AnimeById',
    )
    ..executeOnListen = true;

  @override
  _i3.GAnimeByIdVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAnimeByIdData? Function(
    _i2.GAnimeByIdData?,
    _i2.GAnimeByIdData?,
  )? get updateResult;
  @override
  _i2.GAnimeByIdData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GAnimeByIdData? parseData(Map<String, dynamic> json) =>
      _i2.GAnimeByIdData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAnimeByIdData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAnimeByIdData, _i3.GAnimeByIdVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAnimeByIdReq> get serializer => _$gAnimeByIdReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAnimeByIdReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAnimeByIdReq.serializer,
        json,
      );
}
