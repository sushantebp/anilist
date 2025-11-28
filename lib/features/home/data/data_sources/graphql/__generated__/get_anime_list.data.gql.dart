// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_anime_list.data.gql.g.dart';

abstract class GGetAnimeListData
    implements Built<GGetAnimeListData, GGetAnimeListDataBuilder> {
  GGetAnimeListData._();

  factory GGetAnimeListData(
          [void Function(GGetAnimeListDataBuilder b) updates]) =
      _$GGetAnimeListData;

  static void _initializeBuilder(GGetAnimeListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetAnimeListData_Page? get Page;
  static Serializer<GGetAnimeListData> get serializer =>
      _$gGetAnimeListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAnimeListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAnimeListData.serializer,
        json,
      );
}

abstract class GGetAnimeListData_Page
    implements Built<GGetAnimeListData_Page, GGetAnimeListData_PageBuilder> {
  GGetAnimeListData_Page._();

  factory GGetAnimeListData_Page(
          [void Function(GGetAnimeListData_PageBuilder b) updates]) =
      _$GGetAnimeListData_Page;

  static void _initializeBuilder(GGetAnimeListData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAnimeListData_Page_media?>? get media;
  static Serializer<GGetAnimeListData_Page> get serializer =>
      _$gGetAnimeListDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAnimeListData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAnimeListData_Page.serializer,
        json,
      );
}

abstract class GGetAnimeListData_Page_media
    implements
        Built<GGetAnimeListData_Page_media,
            GGetAnimeListData_Page_mediaBuilder> {
  GGetAnimeListData_Page_media._();

  factory GGetAnimeListData_Page_media(
          [void Function(GGetAnimeListData_Page_mediaBuilder b) updates]) =
      _$GGetAnimeListData_Page_media;

  static void _initializeBuilder(GGetAnimeListData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GGetAnimeListData_Page_media_title? get title;
  int? get episodes;
  String? get description;
  GGetAnimeListData_Page_media_coverImage? get coverImage;
  _i2.GMediaStatus? get status;
  static Serializer<GGetAnimeListData_Page_media> get serializer =>
      _$gGetAnimeListDataPageMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAnimeListData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAnimeListData_Page_media.serializer,
        json,
      );
}

abstract class GGetAnimeListData_Page_media_title
    implements
        Built<GGetAnimeListData_Page_media_title,
            GGetAnimeListData_Page_media_titleBuilder> {
  GGetAnimeListData_Page_media_title._();

  factory GGetAnimeListData_Page_media_title(
      [void Function(GGetAnimeListData_Page_media_titleBuilder b)
          updates]) = _$GGetAnimeListData_Page_media_title;

  static void _initializeBuilder(GGetAnimeListData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get english;
  static Serializer<GGetAnimeListData_Page_media_title> get serializer =>
      _$gGetAnimeListDataPageMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAnimeListData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAnimeListData_Page_media_title.serializer,
        json,
      );
}

abstract class GGetAnimeListData_Page_media_coverImage
    implements
        Built<GGetAnimeListData_Page_media_coverImage,
            GGetAnimeListData_Page_media_coverImageBuilder> {
  GGetAnimeListData_Page_media_coverImage._();

  factory GGetAnimeListData_Page_media_coverImage(
      [void Function(GGetAnimeListData_Page_media_coverImageBuilder b)
          updates]) = _$GGetAnimeListData_Page_media_coverImage;

  static void _initializeBuilder(
          GGetAnimeListData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GGetAnimeListData_Page_media_coverImage> get serializer =>
      _$gGetAnimeListDataPageMediaCoverImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAnimeListData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAnimeListData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAnimeListData_Page_media_coverImage.serializer,
        json,
      );
}
