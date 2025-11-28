// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_anime_list.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAnimeListData> _$gGetAnimeListDataSerializer =
    _$GGetAnimeListDataSerializer();
Serializer<GGetAnimeListData_Page> _$gGetAnimeListDataPageSerializer =
    _$GGetAnimeListData_PageSerializer();
Serializer<GGetAnimeListData_Page_media>
_$gGetAnimeListDataPageMediaSerializer =
    _$GGetAnimeListData_Page_mediaSerializer();
Serializer<GGetAnimeListData_Page_media_title>
_$gGetAnimeListDataPageMediaTitleSerializer =
    _$GGetAnimeListData_Page_media_titleSerializer();
Serializer<GGetAnimeListData_Page_media_coverImage>
_$gGetAnimeListDataPageMediaCoverImageSerializer =
    _$GGetAnimeListData_Page_media_coverImageSerializer();

class _$GGetAnimeListDataSerializer
    implements StructuredSerializer<GGetAnimeListData> {
  @override
  final Iterable<Type> types = const [GGetAnimeListData, _$GGetAnimeListData];
  @override
  final String wireName = 'GGetAnimeListData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAnimeListData object, {
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
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GGetAnimeListData_Page),
          ),
        );
    }
    return result;
  }

  @override
  GGetAnimeListData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAnimeListDataBuilder();

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
        case 'Page':
          result.Page.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GGetAnimeListData_Page),
                )!
                as GGetAnimeListData_Page,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAnimeListData_PageSerializer
    implements StructuredSerializer<GGetAnimeListData_Page> {
  @override
  final Iterable<Type> types = const [
    GGetAnimeListData_Page,
    _$GGetAnimeListData_Page,
  ];
  @override
  final String wireName = 'GGetAnimeListData_Page';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAnimeListData_Page object, {
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
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GGetAnimeListData_Page_media),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  GGetAnimeListData_Page deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAnimeListData_PageBuilder();

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
        case 'media':
          result.media.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(GGetAnimeListData_Page_media),
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

class _$GGetAnimeListData_Page_mediaSerializer
    implements StructuredSerializer<GGetAnimeListData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GGetAnimeListData_Page_media,
    _$GGetAnimeListData_Page_media,
  ];
  @override
  final String wireName = 'GGetAnimeListData_Page_media';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAnimeListData_Page_media object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GGetAnimeListData_Page_media_title),
          ),
        );
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetAnimeListData_Page_media_coverImage,
            ),
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
    return result;
  }

  @override
  GGetAnimeListData_Page_media deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAnimeListData_Page_mediaBuilder();

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
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
        case 'title':
          result.title.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetAnimeListData_Page_media_title,
                  ),
                )!
                as GGetAnimeListData_Page_media_title,
          );
          break;
        case 'episodes':
          result.episodes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'coverImage':
          result.coverImage.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetAnimeListData_Page_media_coverImage,
                  ),
                )!
                as GGetAnimeListData_Page_media_coverImage,
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
      }
    }

    return result.build();
  }
}

class _$GGetAnimeListData_Page_media_titleSerializer
    implements StructuredSerializer<GGetAnimeListData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GGetAnimeListData_Page_media_title,
    _$GGetAnimeListData_Page_media_title,
  ];
  @override
  final String wireName = 'GGetAnimeListData_Page_media_title';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAnimeListData_Page_media_title object, {
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
    return result;
  }

  @override
  GGetAnimeListData_Page_media_title deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAnimeListData_Page_media_titleBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetAnimeListData_Page_media_coverImageSerializer
    implements StructuredSerializer<GGetAnimeListData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GGetAnimeListData_Page_media_coverImage,
    _$GGetAnimeListData_Page_media_coverImage,
  ];
  @override
  final String wireName = 'GGetAnimeListData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAnimeListData_Page_media_coverImage object, {
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
  GGetAnimeListData_Page_media_coverImage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAnimeListData_Page_media_coverImageBuilder();

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

class _$GGetAnimeListData extends GGetAnimeListData {
  @override
  final String G__typename;
  @override
  final GGetAnimeListData_Page? Page;

  factory _$GGetAnimeListData([
    void Function(GGetAnimeListDataBuilder)? updates,
  ]) => (GGetAnimeListDataBuilder()..update(updates))._build();

  _$GGetAnimeListData._({required this.G__typename, this.Page}) : super._();
  @override
  GGetAnimeListData rebuild(void Function(GGetAnimeListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAnimeListDataBuilder toBuilder() =>
      GGetAnimeListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAnimeListData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAnimeListData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GGetAnimeListDataBuilder
    implements Builder<GGetAnimeListData, GGetAnimeListDataBuilder> {
  _$GGetAnimeListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetAnimeListData_PageBuilder? _Page;
  GGetAnimeListData_PageBuilder get Page =>
      _$this._Page ??= GGetAnimeListData_PageBuilder();
  set Page(GGetAnimeListData_PageBuilder? Page) => _$this._Page = Page;

  GGetAnimeListDataBuilder() {
    GGetAnimeListData._initializeBuilder(this);
  }

  GGetAnimeListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAnimeListData other) {
    _$v = other as _$GGetAnimeListData;
  }

  @override
  void update(void Function(GGetAnimeListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAnimeListData build() => _build();

  _$GGetAnimeListData _build() {
    _$GGetAnimeListData _$result;
    try {
      _$result =
          _$v ??
          _$GGetAnimeListData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetAnimeListData',
              'G__typename',
            ),
            Page: _Page?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetAnimeListData',
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

class _$GGetAnimeListData_Page extends GGetAnimeListData_Page {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAnimeListData_Page_media?>? media;

  factory _$GGetAnimeListData_Page([
    void Function(GGetAnimeListData_PageBuilder)? updates,
  ]) => (GGetAnimeListData_PageBuilder()..update(updates))._build();

  _$GGetAnimeListData_Page._({required this.G__typename, this.media})
    : super._();
  @override
  GGetAnimeListData_Page rebuild(
    void Function(GGetAnimeListData_PageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAnimeListData_PageBuilder toBuilder() =>
      GGetAnimeListData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAnimeListData_Page &&
        G__typename == other.G__typename &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAnimeListData_Page')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GGetAnimeListData_PageBuilder
    implements Builder<GGetAnimeListData_Page, GGetAnimeListData_PageBuilder> {
  _$GGetAnimeListData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAnimeListData_Page_media?>? _media;
  ListBuilder<GGetAnimeListData_Page_media?> get media =>
      _$this._media ??= ListBuilder<GGetAnimeListData_Page_media?>();
  set media(ListBuilder<GGetAnimeListData_Page_media?>? media) =>
      _$this._media = media;

  GGetAnimeListData_PageBuilder() {
    GGetAnimeListData_Page._initializeBuilder(this);
  }

  GGetAnimeListData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAnimeListData_Page other) {
    _$v = other as _$GGetAnimeListData_Page;
  }

  @override
  void update(void Function(GGetAnimeListData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAnimeListData_Page build() => _build();

  _$GGetAnimeListData_Page _build() {
    _$GGetAnimeListData_Page _$result;
    try {
      _$result =
          _$v ??
          _$GGetAnimeListData_Page._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetAnimeListData_Page',
              'G__typename',
            ),
            media: _media?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetAnimeListData_Page',
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

class _$GGetAnimeListData_Page_media extends GGetAnimeListData_Page_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GGetAnimeListData_Page_media_title? title;
  @override
  final int? episodes;
  @override
  final String? description;
  @override
  final GGetAnimeListData_Page_media_coverImage? coverImage;
  @override
  final _i2.GMediaStatus? status;

  factory _$GGetAnimeListData_Page_media([
    void Function(GGetAnimeListData_Page_mediaBuilder)? updates,
  ]) => (GGetAnimeListData_Page_mediaBuilder()..update(updates))._build();

  _$GGetAnimeListData_Page_media._({
    required this.G__typename,
    required this.id,
    this.title,
    this.episodes,
    this.description,
    this.coverImage,
    this.status,
  }) : super._();
  @override
  GGetAnimeListData_Page_media rebuild(
    void Function(GGetAnimeListData_Page_mediaBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAnimeListData_Page_mediaBuilder toBuilder() =>
      GGetAnimeListData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAnimeListData_Page_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        episodes == other.episodes &&
        description == other.description &&
        coverImage == other.coverImage &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAnimeListData_Page_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('episodes', episodes)
          ..add('description', description)
          ..add('coverImage', coverImage)
          ..add('status', status))
        .toString();
  }
}

class GGetAnimeListData_Page_mediaBuilder
    implements
        Builder<
          GGetAnimeListData_Page_media,
          GGetAnimeListData_Page_mediaBuilder
        > {
  _$GGetAnimeListData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GGetAnimeListData_Page_media_titleBuilder? _title;
  GGetAnimeListData_Page_media_titleBuilder get title =>
      _$this._title ??= GGetAnimeListData_Page_media_titleBuilder();
  set title(GGetAnimeListData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GGetAnimeListData_Page_media_coverImageBuilder? _coverImage;
  GGetAnimeListData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= GGetAnimeListData_Page_media_coverImageBuilder();
  set coverImage(GGetAnimeListData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  _i2.GMediaStatus? _status;
  _i2.GMediaStatus? get status => _$this._status;
  set status(_i2.GMediaStatus? status) => _$this._status = status;

  GGetAnimeListData_Page_mediaBuilder() {
    GGetAnimeListData_Page_media._initializeBuilder(this);
  }

  GGetAnimeListData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _episodes = $v.episodes;
      _description = $v.description;
      _coverImage = $v.coverImage?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAnimeListData_Page_media other) {
    _$v = other as _$GGetAnimeListData_Page_media;
  }

  @override
  void update(void Function(GGetAnimeListData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAnimeListData_Page_media build() => _build();

  _$GGetAnimeListData_Page_media _build() {
    _$GGetAnimeListData_Page_media _$result;
    try {
      _$result =
          _$v ??
          _$GGetAnimeListData_Page_media._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetAnimeListData_Page_media',
              'G__typename',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'GGetAnimeListData_Page_media',
              'id',
            ),
            title: _title?.build(),
            episodes: episodes,
            description: description,
            coverImage: _coverImage?.build(),
            status: status,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();

        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetAnimeListData_Page_media',
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

class _$GGetAnimeListData_Page_media_title
    extends GGetAnimeListData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? english;

  factory _$GGetAnimeListData_Page_media_title([
    void Function(GGetAnimeListData_Page_media_titleBuilder)? updates,
  ]) => (GGetAnimeListData_Page_media_titleBuilder()..update(updates))._build();

  _$GGetAnimeListData_Page_media_title._({
    required this.G__typename,
    this.english,
  }) : super._();
  @override
  GGetAnimeListData_Page_media_title rebuild(
    void Function(GGetAnimeListData_Page_media_titleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAnimeListData_Page_media_titleBuilder toBuilder() =>
      GGetAnimeListData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAnimeListData_Page_media_title &&
        G__typename == other.G__typename &&
        english == other.english;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAnimeListData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('english', english))
        .toString();
  }
}

class GGetAnimeListData_Page_media_titleBuilder
    implements
        Builder<
          GGetAnimeListData_Page_media_title,
          GGetAnimeListData_Page_media_titleBuilder
        > {
  _$GGetAnimeListData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  GGetAnimeListData_Page_media_titleBuilder() {
    GGetAnimeListData_Page_media_title._initializeBuilder(this);
  }

  GGetAnimeListData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _english = $v.english;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAnimeListData_Page_media_title other) {
    _$v = other as _$GGetAnimeListData_Page_media_title;
  }

  @override
  void update(
    void Function(GGetAnimeListData_Page_media_titleBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetAnimeListData_Page_media_title build() => _build();

  _$GGetAnimeListData_Page_media_title _build() {
    final _$result =
        _$v ??
        _$GGetAnimeListData_Page_media_title._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetAnimeListData_Page_media_title',
            'G__typename',
          ),
          english: english,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetAnimeListData_Page_media_coverImage
    extends GGetAnimeListData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GGetAnimeListData_Page_media_coverImage([
    void Function(GGetAnimeListData_Page_media_coverImageBuilder)? updates,
  ]) => (GGetAnimeListData_Page_media_coverImageBuilder()..update(updates))
      ._build();

  _$GGetAnimeListData_Page_media_coverImage._({
    required this.G__typename,
    this.large,
  }) : super._();
  @override
  GGetAnimeListData_Page_media_coverImage rebuild(
    void Function(GGetAnimeListData_Page_media_coverImageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAnimeListData_Page_media_coverImageBuilder toBuilder() =>
      GGetAnimeListData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAnimeListData_Page_media_coverImage &&
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
    return (newBuiltValueToStringHelper(
            r'GGetAnimeListData_Page_media_coverImage',
          )
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GGetAnimeListData_Page_media_coverImageBuilder
    implements
        Builder<
          GGetAnimeListData_Page_media_coverImage,
          GGetAnimeListData_Page_media_coverImageBuilder
        > {
  _$GGetAnimeListData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GGetAnimeListData_Page_media_coverImageBuilder() {
    GGetAnimeListData_Page_media_coverImage._initializeBuilder(this);
  }

  GGetAnimeListData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAnimeListData_Page_media_coverImage other) {
    _$v = other as _$GGetAnimeListData_Page_media_coverImage;
  }

  @override
  void update(
    void Function(GGetAnimeListData_Page_media_coverImageBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetAnimeListData_Page_media_coverImage build() => _build();

  _$GGetAnimeListData_Page_media_coverImage _build() {
    final _$result =
        _$v ??
        _$GGetAnimeListData_Page_media_coverImage._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetAnimeListData_Page_media_coverImage',
            'G__typename',
          ),
          large: large,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
