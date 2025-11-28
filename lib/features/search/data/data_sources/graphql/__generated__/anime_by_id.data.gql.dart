// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_by_id.data.gql.g.dart';

abstract class GAnimeByIdData
    implements Built<GAnimeByIdData, GAnimeByIdDataBuilder> {
  GAnimeByIdData._();

  factory GAnimeByIdData([void Function(GAnimeByIdDataBuilder b) updates]) =
      _$GAnimeByIdData;

  static void _initializeBuilder(GAnimeByIdDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAnimeByIdData_Media? get Media;
  static Serializer<GAnimeByIdData> get serializer =>
      _$gAnimeByIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media
    implements Built<GAnimeByIdData_Media, GAnimeByIdData_MediaBuilder> {
  GAnimeByIdData_Media._();

  factory GAnimeByIdData_Media(
          [void Function(GAnimeByIdData_MediaBuilder b) updates]) =
      _$GAnimeByIdData_Media;

  static void _initializeBuilder(GAnimeByIdData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAnimeByIdData_Media_coverImage? get coverImage;
  GAnimeByIdData_Media_title? get title;
  int? get episodes;
  int? get trending;
  GAnimeByIdData_Media_trailer? get trailer;
  _i2.GMediaStatus? get status;
  BuiltList<String?>? get genres;
  int? get popularity;
  GAnimeByIdData_Media_reviews? get reviews;
  static Serializer<GAnimeByIdData_Media> get serializer =>
      _$gAnimeByIdDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_coverImage
    implements
        Built<GAnimeByIdData_Media_coverImage,
            GAnimeByIdData_Media_coverImageBuilder> {
  GAnimeByIdData_Media_coverImage._();

  factory GAnimeByIdData_Media_coverImage(
          [void Function(GAnimeByIdData_Media_coverImageBuilder b) updates]) =
      _$GAnimeByIdData_Media_coverImage;

  static void _initializeBuilder(GAnimeByIdData_Media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GAnimeByIdData_Media_coverImage> get serializer =>
      _$gAnimeByIdDataMediaCoverImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_coverImage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_coverImage.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_title
    implements
        Built<GAnimeByIdData_Media_title, GAnimeByIdData_Media_titleBuilder> {
  GAnimeByIdData_Media_title._();

  factory GAnimeByIdData_Media_title(
          [void Function(GAnimeByIdData_Media_titleBuilder b) updates]) =
      _$GAnimeByIdData_Media_title;

  static void _initializeBuilder(GAnimeByIdData_Media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get english;
  String? get native;
  static Serializer<GAnimeByIdData_Media_title> get serializer =>
      _$gAnimeByIdDataMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_title.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_trailer
    implements
        Built<GAnimeByIdData_Media_trailer,
            GAnimeByIdData_Media_trailerBuilder> {
  GAnimeByIdData_Media_trailer._();

  factory GAnimeByIdData_Media_trailer(
          [void Function(GAnimeByIdData_Media_trailerBuilder b) updates]) =
      _$GAnimeByIdData_Media_trailer;

  static void _initializeBuilder(GAnimeByIdData_Media_trailerBuilder b) =>
      b..G__typename = 'MediaTrailer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get thumbnail;
  String? get site;
  static Serializer<GAnimeByIdData_Media_trailer> get serializer =>
      _$gAnimeByIdDataMediaTrailerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_trailer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_trailer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_trailer.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_reviews
    implements
        Built<GAnimeByIdData_Media_reviews,
            GAnimeByIdData_Media_reviewsBuilder> {
  GAnimeByIdData_Media_reviews._();

  factory GAnimeByIdData_Media_reviews(
          [void Function(GAnimeByIdData_Media_reviewsBuilder b) updates]) =
      _$GAnimeByIdData_Media_reviews;

  static void _initializeBuilder(GAnimeByIdData_Media_reviewsBuilder b) =>
      b..G__typename = 'ReviewConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAnimeByIdData_Media_reviews_edges?>? get edges;
  static Serializer<GAnimeByIdData_Media_reviews> get serializer =>
      _$gAnimeByIdDataMediaReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_reviews.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_reviews_edges
    implements
        Built<GAnimeByIdData_Media_reviews_edges,
            GAnimeByIdData_Media_reviews_edgesBuilder> {
  GAnimeByIdData_Media_reviews_edges._();

  factory GAnimeByIdData_Media_reviews_edges(
      [void Function(GAnimeByIdData_Media_reviews_edgesBuilder b)
          updates]) = _$GAnimeByIdData_Media_reviews_edges;

  static void _initializeBuilder(GAnimeByIdData_Media_reviews_edgesBuilder b) =>
      b..G__typename = 'ReviewEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAnimeByIdData_Media_reviews_edges_node? get node;
  static Serializer<GAnimeByIdData_Media_reviews_edges> get serializer =>
      _$gAnimeByIdDataMediaReviewsEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_reviews_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_reviews_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_reviews_edges.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_reviews_edges_node
    implements
        Built<GAnimeByIdData_Media_reviews_edges_node,
            GAnimeByIdData_Media_reviews_edges_nodeBuilder> {
  GAnimeByIdData_Media_reviews_edges_node._();

  factory GAnimeByIdData_Media_reviews_edges_node(
      [void Function(GAnimeByIdData_Media_reviews_edges_nodeBuilder b)
          updates]) = _$GAnimeByIdData_Media_reviews_edges_node;

  static void _initializeBuilder(
          GAnimeByIdData_Media_reviews_edges_nodeBuilder b) =>
      b..G__typename = 'Review';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAnimeByIdData_Media_reviews_edges_node_user? get user;
  String? get summary;
  static Serializer<GAnimeByIdData_Media_reviews_edges_node> get serializer =>
      _$gAnimeByIdDataMediaReviewsEdgesNodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_reviews_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_reviews_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_reviews_edges_node.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_reviews_edges_node_user
    implements
        Built<GAnimeByIdData_Media_reviews_edges_node_user,
            GAnimeByIdData_Media_reviews_edges_node_userBuilder> {
  GAnimeByIdData_Media_reviews_edges_node_user._();

  factory GAnimeByIdData_Media_reviews_edges_node_user(
      [void Function(GAnimeByIdData_Media_reviews_edges_node_userBuilder b)
          updates]) = _$GAnimeByIdData_Media_reviews_edges_node_user;

  static void _initializeBuilder(
          GAnimeByIdData_Media_reviews_edges_node_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  GAnimeByIdData_Media_reviews_edges_node_user_avatar? get avatar;
  static Serializer<GAnimeByIdData_Media_reviews_edges_node_user>
      get serializer => _$gAnimeByIdDataMediaReviewsEdgesNodeUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_reviews_edges_node_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_reviews_edges_node_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_reviews_edges_node_user.serializer,
        json,
      );
}

abstract class GAnimeByIdData_Media_reviews_edges_node_user_avatar
    implements
        Built<GAnimeByIdData_Media_reviews_edges_node_user_avatar,
            GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder> {
  GAnimeByIdData_Media_reviews_edges_node_user_avatar._();

  factory GAnimeByIdData_Media_reviews_edges_node_user_avatar(
      [void Function(
              GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder b)
          updates]) = _$GAnimeByIdData_Media_reviews_edges_node_user_avatar;

  static void _initializeBuilder(
          GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  static Serializer<GAnimeByIdData_Media_reviews_edges_node_user_avatar>
      get serializer =>
          _$gAnimeByIdDataMediaReviewsEdgesNodeUserAvatarSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAnimeByIdData_Media_reviews_edges_node_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAnimeByIdData_Media_reviews_edges_node_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAnimeByIdData_Media_reviews_edges_node_user_avatar.serializer,
        json,
      );
}
