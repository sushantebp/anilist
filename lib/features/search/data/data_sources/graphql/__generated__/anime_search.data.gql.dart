// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_search.data.gql.g.dart';

abstract class GAnimeSearchData
    implements Built<GAnimeSearchData, GAnimeSearchDataBuilder> {
  GAnimeSearchData._();

  factory GAnimeSearchData([void Function(GAnimeSearchDataBuilder b) updates]) =
      _$GAnimeSearchData;

  static void _initializeBuilder(GAnimeSearchDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAnimeSearchData_Page? get Page;
  static Serializer<GAnimeSearchData> get serializer =>
      _$gAnimeSearchDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeSearchData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeSearchData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeSearchData.serializer,
        json,
      );
}

abstract class GAnimeSearchData_Page
    implements Built<GAnimeSearchData_Page, GAnimeSearchData_PageBuilder> {
  GAnimeSearchData_Page._();

  factory GAnimeSearchData_Page(
          [void Function(GAnimeSearchData_PageBuilder b) updates]) =
      _$GAnimeSearchData_Page;

  static void _initializeBuilder(GAnimeSearchData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAnimeSearchData_Page_media?>? get media;
  static Serializer<GAnimeSearchData_Page> get serializer =>
      _$gAnimeSearchDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeSearchData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeSearchData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeSearchData_Page.serializer,
        json,
      );
}

abstract class GAnimeSearchData_Page_media
    implements
        Built<GAnimeSearchData_Page_media, GAnimeSearchData_Page_mediaBuilder> {
  GAnimeSearchData_Page_media._();

  factory GAnimeSearchData_Page_media(
          [void Function(GAnimeSearchData_Page_mediaBuilder b) updates]) =
      _$GAnimeSearchData_Page_media;

  static void _initializeBuilder(GAnimeSearchData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GAnimeSearchData_Page_media_title? get title;
  GAnimeSearchData_Page_media_coverImage? get coverImage;
  static Serializer<GAnimeSearchData_Page_media> get serializer =>
      _$gAnimeSearchDataPageMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeSearchData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeSearchData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeSearchData_Page_media.serializer,
        json,
      );
}

abstract class GAnimeSearchData_Page_media_title
    implements
        Built<GAnimeSearchData_Page_media_title,
            GAnimeSearchData_Page_media_titleBuilder> {
  GAnimeSearchData_Page_media_title._();

  factory GAnimeSearchData_Page_media_title(
          [void Function(GAnimeSearchData_Page_media_titleBuilder b) updates]) =
      _$GAnimeSearchData_Page_media_title;

  static void _initializeBuilder(GAnimeSearchData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get english;
  static Serializer<GAnimeSearchData_Page_media_title> get serializer =>
      _$gAnimeSearchDataPageMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeSearchData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeSearchData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeSearchData_Page_media_title.serializer,
        json,
      );
}

abstract class GAnimeSearchData_Page_media_coverImage
    implements
        Built<GAnimeSearchData_Page_media_coverImage,
            GAnimeSearchData_Page_media_coverImageBuilder> {
  GAnimeSearchData_Page_media_coverImage._();

  factory GAnimeSearchData_Page_media_coverImage(
      [void Function(GAnimeSearchData_Page_media_coverImageBuilder b)
          updates]) = _$GAnimeSearchData_Page_media_coverImage;

  static void _initializeBuilder(
          GAnimeSearchData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  static Serializer<GAnimeSearchData_Page_media_coverImage> get serializer =>
      _$gAnimeSearchDataPageMediaCoverImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeSearchData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeSearchData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeSearchData_Page_media_coverImage.serializer,
        json,
      );
}
