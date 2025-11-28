// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/serializers.gql.dart' as _i6;
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.ast.gql.dart'
    as _i5;
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.data.gql.dart'
    as _i2;
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_anime_list.req.gql.g.dart';

abstract class GGetAnimeListReq
    implements
        Built<GGetAnimeListReq, GGetAnimeListReqBuilder>,
        _i1.OperationRequest<_i2.GGetAnimeListData, _i3.GGetAnimeListVars> {
  GGetAnimeListReq._();

  factory GGetAnimeListReq([void Function(GGetAnimeListReqBuilder b) updates]) =
      _$GGetAnimeListReq;

  static void _initializeBuilder(GGetAnimeListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetAnimeList',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetAnimeListVars get vars;
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
  _i2.GGetAnimeListData? Function(
    _i2.GGetAnimeListData?,
    _i2.GGetAnimeListData?,
  )? get updateResult;
  @override
  _i2.GGetAnimeListData? get optimisticResponse;
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
  _i2.GGetAnimeListData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAnimeListData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetAnimeListData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetAnimeListData, _i3.GGetAnimeListVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetAnimeListReq> get serializer =>
      _$gGetAnimeListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetAnimeListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetAnimeListReq.serializer,
        json,
      );
}
