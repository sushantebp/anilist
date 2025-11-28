// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_by_id.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAnimeByIdData> _$gAnimeByIdDataSerializer =
    _$GAnimeByIdDataSerializer();
Serializer<GAnimeByIdData_Media> _$gAnimeByIdDataMediaSerializer =
    _$GAnimeByIdData_MediaSerializer();
Serializer<GAnimeByIdData_Media_coverImage>
_$gAnimeByIdDataMediaCoverImageSerializer =
    _$GAnimeByIdData_Media_coverImageSerializer();
Serializer<GAnimeByIdData_Media_title> _$gAnimeByIdDataMediaTitleSerializer =
    _$GAnimeByIdData_Media_titleSerializer();
Serializer<GAnimeByIdData_Media_trailer>
_$gAnimeByIdDataMediaTrailerSerializer =
    _$GAnimeByIdData_Media_trailerSerializer();
Serializer<GAnimeByIdData_Media_reviews>
_$gAnimeByIdDataMediaReviewsSerializer =
    _$GAnimeByIdData_Media_reviewsSerializer();
Serializer<GAnimeByIdData_Media_reviews_edges>
_$gAnimeByIdDataMediaReviewsEdgesSerializer =
    _$GAnimeByIdData_Media_reviews_edgesSerializer();
Serializer<GAnimeByIdData_Media_reviews_edges_node>
_$gAnimeByIdDataMediaReviewsEdgesNodeSerializer =
    _$GAnimeByIdData_Media_reviews_edges_nodeSerializer();
Serializer<GAnimeByIdData_Media_reviews_edges_node_user>
_$gAnimeByIdDataMediaReviewsEdgesNodeUserSerializer =
    _$GAnimeByIdData_Media_reviews_edges_node_userSerializer();
Serializer<GAnimeByIdData_Media_reviews_edges_node_user_avatar>
_$gAnimeByIdDataMediaReviewsEdgesNodeUserAvatarSerializer =
    _$GAnimeByIdData_Media_reviews_edges_node_user_avatarSerializer();

class _$GAnimeByIdDataSerializer
    implements StructuredSerializer<GAnimeByIdData> {
  @override
  final Iterable<Type> types = const [GAnimeByIdData, _$GAnimeByIdData];
  @override
  final String wireName = 'GAnimeByIdData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.Media;
    if (value != null) {
      result
        ..add('Media')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GAnimeByIdData_Media),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'Media':
          result.Media.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GAnimeByIdData_Media),
                )!
                as GAnimeByIdData_Media,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_MediaSerializer
    implements StructuredSerializer<GAnimeByIdData_Media> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media,
    _$GAnimeByIdData_Media,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GAnimeByIdData_Media_coverImage),
          ),
        );
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GAnimeByIdData_Media_title),
          ),
        );
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.trending;
    if (value != null) {
      result
        ..add('trending')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.trailer;
    if (value != null) {
      result
        ..add('trailer')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GAnimeByIdData_Media_trailer),
          ),
        );
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(_i2.GMediaStatus),
          ),
        );
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(String),
            ]),
          ),
        );
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GAnimeByIdData_Media_reviews),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_MediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'coverImage':
          result.coverImage.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GAnimeByIdData_Media_coverImage,
                  ),
                )!
                as GAnimeByIdData_Media_coverImage,
          );
          break;
        case 'title':
          result.title.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GAnimeByIdData_Media_title),
                )!
                as GAnimeByIdData_Media_title,
          );
          break;
        case 'episodes':
          result.episodes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'trending':
          result.trending =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'trailer':
          result.trailer.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GAnimeByIdData_Media_trailer),
                )!
                as GAnimeByIdData_Media_trailer,
          );
          break;
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i2.GMediaStatus),
                  )
                  as _i2.GMediaStatus?;
          break;
        case 'genres':
          result.genres.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(String),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
        case 'popularity':
          result.popularity =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'reviews':
          result.reviews.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GAnimeByIdData_Media_reviews),
                )!
                as GAnimeByIdData_Media_reviews,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_coverImageSerializer
    implements StructuredSerializer<GAnimeByIdData_Media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_coverImage,
    _$GAnimeByIdData_Media_coverImage,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_coverImage';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_coverImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_coverImage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_coverImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'large':
          result.large =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_titleSerializer
    implements StructuredSerializer<GAnimeByIdData_Media_title> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_title,
    _$GAnimeByIdData_Media_title,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_title';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_title object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.native;
    if (value != null) {
      result
        ..add('native')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_title deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_titleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'english':
          result.english =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'native':
          result.native =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_trailerSerializer
    implements StructuredSerializer<GAnimeByIdData_Media_trailer> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_trailer,
    _$GAnimeByIdData_Media_trailer,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_trailer';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_trailer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.site;
    if (value != null) {
      result
        ..add('site')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_trailer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_trailerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'thumbnail':
          result.thumbnail =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'site':
          result.site =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_reviewsSerializer
    implements StructuredSerializer<GAnimeByIdData_Media_reviews> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_reviews,
    _$GAnimeByIdData_Media_reviews,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_reviews';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_reviews object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GAnimeByIdData_Media_reviews_edges),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_reviews deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_reviewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'edges':
          result.edges.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(GAnimeByIdData_Media_reviews_edges),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_reviews_edgesSerializer
    implements StructuredSerializer<GAnimeByIdData_Media_reviews_edges> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_reviews_edges,
    _$GAnimeByIdData_Media_reviews_edges,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_reviews_edges';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_reviews_edges object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GAnimeByIdData_Media_reviews_edges_node,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_reviews_edges deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_reviews_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'node':
          result.node.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GAnimeByIdData_Media_reviews_edges_node,
                  ),
                )!
                as GAnimeByIdData_Media_reviews_edges_node,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_reviews_edges_nodeSerializer
    implements StructuredSerializer<GAnimeByIdData_Media_reviews_edges_node> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_reviews_edges_node,
    _$GAnimeByIdData_Media_reviews_edges_node,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_reviews_edges_node';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_reviews_edges_node object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GAnimeByIdData_Media_reviews_edges_node_user,
            ),
          ),
        );
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_reviews_edges_node deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_reviews_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'user':
          result.user.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GAnimeByIdData_Media_reviews_edges_node_user,
                  ),
                )!
                as GAnimeByIdData_Media_reviews_edges_node_user,
          );
          break;
        case 'summary':
          result.summary =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_reviews_edges_node_userSerializer
    implements
        StructuredSerializer<GAnimeByIdData_Media_reviews_edges_node_user> {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_reviews_edges_node_user,
    _$GAnimeByIdData_Media_reviews_edges_node_user,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_reviews_edges_node_user';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_reviews_edges_node_user object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GAnimeByIdData_Media_reviews_edges_node_user_avatar,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_reviews_edges_node_user deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_reviews_edges_node_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'avatar':
          result.avatar.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GAnimeByIdData_Media_reviews_edges_node_user_avatar,
                  ),
                )!
                as GAnimeByIdData_Media_reviews_edges_node_user_avatar,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData_Media_reviews_edges_node_user_avatarSerializer
    implements
        StructuredSerializer<
          GAnimeByIdData_Media_reviews_edges_node_user_avatar
        > {
  @override
  final Iterable<Type> types = const [
    GAnimeByIdData_Media_reviews_edges_node_user_avatar,
    _$GAnimeByIdData_Media_reviews_edges_node_user_avatar,
  ];
  @override
  final String wireName = 'GAnimeByIdData_Media_reviews_edges_node_user_avatar';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdData_Media_reviews_edges_node_user_avatar object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GAnimeByIdData_Media_reviews_edges_node_user_avatar deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'medium':
          result.medium =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdData extends GAnimeByIdData {
  @override
  final String G__typename;
  @override
  final GAnimeByIdData_Media? Media;

  factory _$GAnimeByIdData([void Function(GAnimeByIdDataBuilder)? updates]) =>
      (GAnimeByIdDataBuilder()..update(updates))._build();

  _$GAnimeByIdData._({required this.G__typename, this.Media}) : super._();
  @override
  GAnimeByIdData rebuild(void Function(GAnimeByIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdDataBuilder toBuilder() => GAnimeByIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData &&
        G__typename == other.G__typename &&
        Media == other.Media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GAnimeByIdDataBuilder
    implements Builder<GAnimeByIdData, GAnimeByIdDataBuilder> {
  _$GAnimeByIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAnimeByIdData_MediaBuilder? _Media;
  GAnimeByIdData_MediaBuilder get Media =>
      _$this._Media ??= GAnimeByIdData_MediaBuilder();
  set Media(GAnimeByIdData_MediaBuilder? Media) => _$this._Media = Media;

  GAnimeByIdDataBuilder() {
    GAnimeByIdData._initializeBuilder(this);
  }

  GAnimeByIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData other) {
    _$v = other as _$GAnimeByIdData;
  }

  @override
  void update(void Function(GAnimeByIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData build() => _build();

  _$GAnimeByIdData _build() {
    _$GAnimeByIdData _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeByIdData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeByIdData',
              'G__typename',
            ),
            Media: _Media?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAnimeByIdData',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media extends GAnimeByIdData_Media {
  @override
  final String G__typename;
  @override
  final GAnimeByIdData_Media_coverImage? coverImage;
  @override
  final GAnimeByIdData_Media_title? title;
  @override
  final int? episodes;
  @override
  final int? trending;
  @override
  final GAnimeByIdData_Media_trailer? trailer;
  @override
  final _i2.GMediaStatus? status;
  @override
  final BuiltList<String?>? genres;
  @override
  final int? popularity;
  @override
  final GAnimeByIdData_Media_reviews? reviews;

  factory _$GAnimeByIdData_Media([
    void Function(GAnimeByIdData_MediaBuilder)? updates,
  ]) => (GAnimeByIdData_MediaBuilder()..update(updates))._build();

  _$GAnimeByIdData_Media._({
    required this.G__typename,
    this.coverImage,
    this.title,
    this.episodes,
    this.trending,
    this.trailer,
    this.status,
    this.genres,
    this.popularity,
    this.reviews,
  }) : super._();
  @override
  GAnimeByIdData_Media rebuild(
    void Function(GAnimeByIdData_MediaBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_MediaBuilder toBuilder() =>
      GAnimeByIdData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media &&
        G__typename == other.G__typename &&
        coverImage == other.coverImage &&
        title == other.title &&
        episodes == other.episodes &&
        trending == other.trending &&
        trailer == other.trailer &&
        status == other.status &&
        genres == other.genres &&
        popularity == other.popularity &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, trending.hashCode);
    _$hash = $jc(_$hash, trailer.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData_Media')
          ..add('G__typename', G__typename)
          ..add('coverImage', coverImage)
          ..add('title', title)
          ..add('episodes', episodes)
          ..add('trending', trending)
          ..add('trailer', trailer)
          ..add('status', status)
          ..add('genres', genres)
          ..add('popularity', popularity)
          ..add('reviews', reviews))
        .toString();
  }
}

class GAnimeByIdData_MediaBuilder
    implements Builder<GAnimeByIdData_Media, GAnimeByIdData_MediaBuilder> {
  _$GAnimeByIdData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAnimeByIdData_Media_coverImageBuilder? _coverImage;
  GAnimeByIdData_Media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= GAnimeByIdData_Media_coverImageBuilder();
  set coverImage(GAnimeByIdData_Media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GAnimeByIdData_Media_titleBuilder? _title;
  GAnimeByIdData_Media_titleBuilder get title =>
      _$this._title ??= GAnimeByIdData_Media_titleBuilder();
  set title(GAnimeByIdData_Media_titleBuilder? title) => _$this._title = title;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _trending;
  int? get trending => _$this._trending;
  set trending(int? trending) => _$this._trending = trending;

  GAnimeByIdData_Media_trailerBuilder? _trailer;
  GAnimeByIdData_Media_trailerBuilder get trailer =>
      _$this._trailer ??= GAnimeByIdData_Media_trailerBuilder();
  set trailer(GAnimeByIdData_Media_trailerBuilder? trailer) =>
      _$this._trailer = trailer;

  _i2.GMediaStatus? _status;
  _i2.GMediaStatus? get status => _$this._status;
  set status(_i2.GMediaStatus? status) => _$this._status = status;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres => _$this._genres ??= ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  GAnimeByIdData_Media_reviewsBuilder? _reviews;
  GAnimeByIdData_Media_reviewsBuilder get reviews =>
      _$this._reviews ??= GAnimeByIdData_Media_reviewsBuilder();
  set reviews(GAnimeByIdData_Media_reviewsBuilder? reviews) =>
      _$this._reviews = reviews;

  GAnimeByIdData_MediaBuilder() {
    GAnimeByIdData_Media._initializeBuilder(this);
  }

  GAnimeByIdData_MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _coverImage = $v.coverImage?.toBuilder();
      _title = $v.title?.toBuilder();
      _episodes = $v.episodes;
      _trending = $v.trending;
      _trailer = $v.trailer?.toBuilder();
      _status = $v.status;
      _genres = $v.genres?.toBuilder();
      _popularity = $v.popularity;
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media other) {
    _$v = other as _$GAnimeByIdData_Media;
  }

  @override
  void update(void Function(GAnimeByIdData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media build() => _build();

  _$GAnimeByIdData_Media _build() {
    _$GAnimeByIdData_Media _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeByIdData_Media._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeByIdData_Media',
              'G__typename',
            ),
            coverImage: _coverImage?.build(),
            title: _title?.build(),
            episodes: episodes,
            trending: trending,
            trailer: _trailer?.build(),
            status: status,
            genres: _genres?.build(),
            popularity: popularity,
            reviews: _reviews?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverImage';
        _coverImage?.build();
        _$failedField = 'title';
        _title?.build();

        _$failedField = 'trailer';
        _trailer?.build();

        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAnimeByIdData_Media',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_coverImage
    extends GAnimeByIdData_Media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GAnimeByIdData_Media_coverImage([
    void Function(GAnimeByIdData_Media_coverImageBuilder)? updates,
  ]) => (GAnimeByIdData_Media_coverImageBuilder()..update(updates))._build();

  _$GAnimeByIdData_Media_coverImage._({required this.G__typename, this.large})
    : super._();
  @override
  GAnimeByIdData_Media_coverImage rebuild(
    void Function(GAnimeByIdData_Media_coverImageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_coverImageBuilder toBuilder() =>
      GAnimeByIdData_Media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_coverImage &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData_Media_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GAnimeByIdData_Media_coverImageBuilder
    implements
        Builder<
          GAnimeByIdData_Media_coverImage,
          GAnimeByIdData_Media_coverImageBuilder
        > {
  _$GAnimeByIdData_Media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GAnimeByIdData_Media_coverImageBuilder() {
    GAnimeByIdData_Media_coverImage._initializeBuilder(this);
  }

  GAnimeByIdData_Media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_coverImage other) {
    _$v = other as _$GAnimeByIdData_Media_coverImage;
  }

  @override
  void update(void Function(GAnimeByIdData_Media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_coverImage build() => _build();

  _$GAnimeByIdData_Media_coverImage _build() {
    final _$result =
        _$v ??
        _$GAnimeByIdData_Media_coverImage._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAnimeByIdData_Media_coverImage',
            'G__typename',
          ),
          large: large,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_title extends GAnimeByIdData_Media_title {
  @override
  final String G__typename;
  @override
  final String? english;
  @override
  final String? native;

  factory _$GAnimeByIdData_Media_title([
    void Function(GAnimeByIdData_Media_titleBuilder)? updates,
  ]) => (GAnimeByIdData_Media_titleBuilder()..update(updates))._build();

  _$GAnimeByIdData_Media_title._({
    required this.G__typename,
    this.english,
    this.native,
  }) : super._();
  @override
  GAnimeByIdData_Media_title rebuild(
    void Function(GAnimeByIdData_Media_titleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_titleBuilder toBuilder() =>
      GAnimeByIdData_Media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_title &&
        G__typename == other.G__typename &&
        english == other.english &&
        native == other.native;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, native.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData_Media_title')
          ..add('G__typename', G__typename)
          ..add('english', english)
          ..add('native', native))
        .toString();
  }
}

class GAnimeByIdData_Media_titleBuilder
    implements
        Builder<GAnimeByIdData_Media_title, GAnimeByIdData_Media_titleBuilder> {
  _$GAnimeByIdData_Media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  GAnimeByIdData_Media_titleBuilder() {
    GAnimeByIdData_Media_title._initializeBuilder(this);
  }

  GAnimeByIdData_Media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _english = $v.english;
      _native = $v.native;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_title other) {
    _$v = other as _$GAnimeByIdData_Media_title;
  }

  @override
  void update(void Function(GAnimeByIdData_Media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_title build() => _build();

  _$GAnimeByIdData_Media_title _build() {
    final _$result =
        _$v ??
        _$GAnimeByIdData_Media_title._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAnimeByIdData_Media_title',
            'G__typename',
          ),
          english: english,
          native: native,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_trailer extends GAnimeByIdData_Media_trailer {
  @override
  final String G__typename;
  @override
  final String? thumbnail;
  @override
  final String? site;

  factory _$GAnimeByIdData_Media_trailer([
    void Function(GAnimeByIdData_Media_trailerBuilder)? updates,
  ]) => (GAnimeByIdData_Media_trailerBuilder()..update(updates))._build();

  _$GAnimeByIdData_Media_trailer._({
    required this.G__typename,
    this.thumbnail,
    this.site,
  }) : super._();
  @override
  GAnimeByIdData_Media_trailer rebuild(
    void Function(GAnimeByIdData_Media_trailerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_trailerBuilder toBuilder() =>
      GAnimeByIdData_Media_trailerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_trailer &&
        G__typename == other.G__typename &&
        thumbnail == other.thumbnail &&
        site == other.site;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData_Media_trailer')
          ..add('G__typename', G__typename)
          ..add('thumbnail', thumbnail)
          ..add('site', site))
        .toString();
  }
}

class GAnimeByIdData_Media_trailerBuilder
    implements
        Builder<
          GAnimeByIdData_Media_trailer,
          GAnimeByIdData_Media_trailerBuilder
        > {
  _$GAnimeByIdData_Media_trailer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  GAnimeByIdData_Media_trailerBuilder() {
    GAnimeByIdData_Media_trailer._initializeBuilder(this);
  }

  GAnimeByIdData_Media_trailerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _thumbnail = $v.thumbnail;
      _site = $v.site;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_trailer other) {
    _$v = other as _$GAnimeByIdData_Media_trailer;
  }

  @override
  void update(void Function(GAnimeByIdData_Media_trailerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_trailer build() => _build();

  _$GAnimeByIdData_Media_trailer _build() {
    final _$result =
        _$v ??
        _$GAnimeByIdData_Media_trailer._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAnimeByIdData_Media_trailer',
            'G__typename',
          ),
          thumbnail: thumbnail,
          site: site,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_reviews extends GAnimeByIdData_Media_reviews {
  @override
  final String G__typename;
  @override
  final BuiltList<GAnimeByIdData_Media_reviews_edges?>? edges;

  factory _$GAnimeByIdData_Media_reviews([
    void Function(GAnimeByIdData_Media_reviewsBuilder)? updates,
  ]) => (GAnimeByIdData_Media_reviewsBuilder()..update(updates))._build();

  _$GAnimeByIdData_Media_reviews._({required this.G__typename, this.edges})
    : super._();
  @override
  GAnimeByIdData_Media_reviews rebuild(
    void Function(GAnimeByIdData_Media_reviewsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_reviewsBuilder toBuilder() =>
      GAnimeByIdData_Media_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_reviews &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData_Media_reviews')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GAnimeByIdData_Media_reviewsBuilder
    implements
        Builder<
          GAnimeByIdData_Media_reviews,
          GAnimeByIdData_Media_reviewsBuilder
        > {
  _$GAnimeByIdData_Media_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAnimeByIdData_Media_reviews_edges?>? _edges;
  ListBuilder<GAnimeByIdData_Media_reviews_edges?> get edges =>
      _$this._edges ??= ListBuilder<GAnimeByIdData_Media_reviews_edges?>();
  set edges(ListBuilder<GAnimeByIdData_Media_reviews_edges?>? edges) =>
      _$this._edges = edges;

  GAnimeByIdData_Media_reviewsBuilder() {
    GAnimeByIdData_Media_reviews._initializeBuilder(this);
  }

  GAnimeByIdData_Media_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_reviews other) {
    _$v = other as _$GAnimeByIdData_Media_reviews;
  }

  @override
  void update(void Function(GAnimeByIdData_Media_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_reviews build() => _build();

  _$GAnimeByIdData_Media_reviews _build() {
    _$GAnimeByIdData_Media_reviews _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeByIdData_Media_reviews._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeByIdData_Media_reviews',
              'G__typename',
            ),
            edges: _edges?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAnimeByIdData_Media_reviews',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_reviews_edges
    extends GAnimeByIdData_Media_reviews_edges {
  @override
  final String G__typename;
  @override
  final GAnimeByIdData_Media_reviews_edges_node? node;

  factory _$GAnimeByIdData_Media_reviews_edges([
    void Function(GAnimeByIdData_Media_reviews_edgesBuilder)? updates,
  ]) => (GAnimeByIdData_Media_reviews_edgesBuilder()..update(updates))._build();

  _$GAnimeByIdData_Media_reviews_edges._({required this.G__typename, this.node})
    : super._();
  @override
  GAnimeByIdData_Media_reviews_edges rebuild(
    void Function(GAnimeByIdData_Media_reviews_edgesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_reviews_edgesBuilder toBuilder() =>
      GAnimeByIdData_Media_reviews_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_reviews_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeByIdData_Media_reviews_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GAnimeByIdData_Media_reviews_edgesBuilder
    implements
        Builder<
          GAnimeByIdData_Media_reviews_edges,
          GAnimeByIdData_Media_reviews_edgesBuilder
        > {
  _$GAnimeByIdData_Media_reviews_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAnimeByIdData_Media_reviews_edges_nodeBuilder? _node;
  GAnimeByIdData_Media_reviews_edges_nodeBuilder get node =>
      _$this._node ??= GAnimeByIdData_Media_reviews_edges_nodeBuilder();
  set node(GAnimeByIdData_Media_reviews_edges_nodeBuilder? node) =>
      _$this._node = node;

  GAnimeByIdData_Media_reviews_edgesBuilder() {
    GAnimeByIdData_Media_reviews_edges._initializeBuilder(this);
  }

  GAnimeByIdData_Media_reviews_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_reviews_edges other) {
    _$v = other as _$GAnimeByIdData_Media_reviews_edges;
  }

  @override
  void update(
    void Function(GAnimeByIdData_Media_reviews_edgesBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_reviews_edges build() => _build();

  _$GAnimeByIdData_Media_reviews_edges _build() {
    _$GAnimeByIdData_Media_reviews_edges _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeByIdData_Media_reviews_edges._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeByIdData_Media_reviews_edges',
              'G__typename',
            ),
            node: _node?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAnimeByIdData_Media_reviews_edges',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_reviews_edges_node
    extends GAnimeByIdData_Media_reviews_edges_node {
  @override
  final String G__typename;
  @override
  final GAnimeByIdData_Media_reviews_edges_node_user? user;
  @override
  final String? summary;

  factory _$GAnimeByIdData_Media_reviews_edges_node([
    void Function(GAnimeByIdData_Media_reviews_edges_nodeBuilder)? updates,
  ]) => (GAnimeByIdData_Media_reviews_edges_nodeBuilder()..update(updates))
      ._build();

  _$GAnimeByIdData_Media_reviews_edges_node._({
    required this.G__typename,
    this.user,
    this.summary,
  }) : super._();
  @override
  GAnimeByIdData_Media_reviews_edges_node rebuild(
    void Function(GAnimeByIdData_Media_reviews_edges_nodeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_reviews_edges_nodeBuilder toBuilder() =>
      GAnimeByIdData_Media_reviews_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_reviews_edges_node &&
        G__typename == other.G__typename &&
        user == other.user &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAnimeByIdData_Media_reviews_edges_node',
          )
          ..add('G__typename', G__typename)
          ..add('user', user)
          ..add('summary', summary))
        .toString();
  }
}

class GAnimeByIdData_Media_reviews_edges_nodeBuilder
    implements
        Builder<
          GAnimeByIdData_Media_reviews_edges_node,
          GAnimeByIdData_Media_reviews_edges_nodeBuilder
        > {
  _$GAnimeByIdData_Media_reviews_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAnimeByIdData_Media_reviews_edges_node_userBuilder? _user;
  GAnimeByIdData_Media_reviews_edges_node_userBuilder get user =>
      _$this._user ??= GAnimeByIdData_Media_reviews_edges_node_userBuilder();
  set user(GAnimeByIdData_Media_reviews_edges_node_userBuilder? user) =>
      _$this._user = user;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  GAnimeByIdData_Media_reviews_edges_nodeBuilder() {
    GAnimeByIdData_Media_reviews_edges_node._initializeBuilder(this);
  }

  GAnimeByIdData_Media_reviews_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user?.toBuilder();
      _summary = $v.summary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_reviews_edges_node other) {
    _$v = other as _$GAnimeByIdData_Media_reviews_edges_node;
  }

  @override
  void update(
    void Function(GAnimeByIdData_Media_reviews_edges_nodeBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_reviews_edges_node build() => _build();

  _$GAnimeByIdData_Media_reviews_edges_node _build() {
    _$GAnimeByIdData_Media_reviews_edges_node _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeByIdData_Media_reviews_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeByIdData_Media_reviews_edges_node',
              'G__typename',
            ),
            user: _user?.build(),
            summary: summary,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAnimeByIdData_Media_reviews_edges_node',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_reviews_edges_node_user
    extends GAnimeByIdData_Media_reviews_edges_node_user {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final GAnimeByIdData_Media_reviews_edges_node_user_avatar? avatar;

  factory _$GAnimeByIdData_Media_reviews_edges_node_user([
    void Function(GAnimeByIdData_Media_reviews_edges_node_userBuilder)? updates,
  ]) => (GAnimeByIdData_Media_reviews_edges_node_userBuilder()..update(updates))
      ._build();

  _$GAnimeByIdData_Media_reviews_edges_node_user._({
    required this.G__typename,
    required this.name,
    this.avatar,
  }) : super._();
  @override
  GAnimeByIdData_Media_reviews_edges_node_user rebuild(
    void Function(GAnimeByIdData_Media_reviews_edges_node_userBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_reviews_edges_node_userBuilder toBuilder() =>
      GAnimeByIdData_Media_reviews_edges_node_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_reviews_edges_node_user &&
        G__typename == other.G__typename &&
        name == other.name &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAnimeByIdData_Media_reviews_edges_node_user',
          )
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('avatar', avatar))
        .toString();
  }
}

class GAnimeByIdData_Media_reviews_edges_node_userBuilder
    implements
        Builder<
          GAnimeByIdData_Media_reviews_edges_node_user,
          GAnimeByIdData_Media_reviews_edges_node_userBuilder
        > {
  _$GAnimeByIdData_Media_reviews_edges_node_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder? _avatar;
  GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder();
  set avatar(
    GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder? avatar,
  ) => _$this._avatar = avatar;

  GAnimeByIdData_Media_reviews_edges_node_userBuilder() {
    GAnimeByIdData_Media_reviews_edges_node_user._initializeBuilder(this);
  }

  GAnimeByIdData_Media_reviews_edges_node_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_reviews_edges_node_user other) {
    _$v = other as _$GAnimeByIdData_Media_reviews_edges_node_user;
  }

  @override
  void update(
    void Function(GAnimeByIdData_Media_reviews_edges_node_userBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_reviews_edges_node_user build() => _build();

  _$GAnimeByIdData_Media_reviews_edges_node_user _build() {
    _$GAnimeByIdData_Media_reviews_edges_node_user _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeByIdData_Media_reviews_edges_node_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeByIdData_Media_reviews_edges_node_user',
              'G__typename',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GAnimeByIdData_Media_reviews_edges_node_user',
              'name',
            ),
            avatar: _avatar?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAnimeByIdData_Media_reviews_edges_node_user',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeByIdData_Media_reviews_edges_node_user_avatar
    extends GAnimeByIdData_Media_reviews_edges_node_user_avatar {
  @override
  final String G__typename;
  @override
  final String? medium;

  factory _$GAnimeByIdData_Media_reviews_edges_node_user_avatar([
    void Function(GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder)?
    updates,
  ]) =>
      (GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GAnimeByIdData_Media_reviews_edges_node_user_avatar._({
    required this.G__typename,
    this.medium,
  }) : super._();
  @override
  GAnimeByIdData_Media_reviews_edges_node_user_avatar rebuild(
    void Function(GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder toBuilder() =>
      GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdData_Media_reviews_edges_node_user_avatar &&
        G__typename == other.G__typename &&
        medium == other.medium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAnimeByIdData_Media_reviews_edges_node_user_avatar',
          )
          ..add('G__typename', G__typename)
          ..add('medium', medium))
        .toString();
  }
}

class GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder
    implements
        Builder<
          GAnimeByIdData_Media_reviews_edges_node_user_avatar,
          GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder
        > {
  _$GAnimeByIdData_Media_reviews_edges_node_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder() {
    GAnimeByIdData_Media_reviews_edges_node_user_avatar._initializeBuilder(
      this,
    );
  }

  GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdData_Media_reviews_edges_node_user_avatar other) {
    _$v = other as _$GAnimeByIdData_Media_reviews_edges_node_user_avatar;
  }

  @override
  void update(
    void Function(GAnimeByIdData_Media_reviews_edges_node_user_avatarBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdData_Media_reviews_edges_node_user_avatar build() => _build();

  _$GAnimeByIdData_Media_reviews_edges_node_user_avatar _build() {
    final _$result =
        _$v ??
        _$GAnimeByIdData_Media_reviews_edges_node_user_avatar._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAnimeByIdData_Media_reviews_edges_node_user_avatar',
            'G__typename',
          ),
          medium: medium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
