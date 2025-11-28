// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_search.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAnimeSearchData> _$gAnimeSearchDataSerializer =
    _$GAnimeSearchDataSerializer();
Serializer<GAnimeSearchData_Page> _$gAnimeSearchDataPageSerializer =
    _$GAnimeSearchData_PageSerializer();
Serializer<GAnimeSearchData_Page_media> _$gAnimeSearchDataPageMediaSerializer =
    _$GAnimeSearchData_Page_mediaSerializer();
Serializer<GAnimeSearchData_Page_media_title>
_$gAnimeSearchDataPageMediaTitleSerializer =
    _$GAnimeSearchData_Page_media_titleSerializer();
Serializer<GAnimeSearchData_Page_media_coverImage>
_$gAnimeSearchDataPageMediaCoverImageSerializer =
    _$GAnimeSearchData_Page_media_coverImageSerializer();

class _$GAnimeSearchDataSerializer
    implements StructuredSerializer<GAnimeSearchData> {
  @override
  final Iterable<Type> types = const [GAnimeSearchData, _$GAnimeSearchData];
  @override
  final String wireName = 'GAnimeSearchData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeSearchData object, {
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
            specifiedType: const FullType(GAnimeSearchData_Page),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeSearchData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeSearchDataBuilder();

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
                  specifiedType: const FullType(GAnimeSearchData_Page),
                )!
                as GAnimeSearchData_Page,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeSearchData_PageSerializer
    implements StructuredSerializer<GAnimeSearchData_Page> {
  @override
  final Iterable<Type> types = const [
    GAnimeSearchData_Page,
    _$GAnimeSearchData_Page,
  ];
  @override
  final String wireName = 'GAnimeSearchData_Page';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeSearchData_Page object, {
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
              const FullType.nullable(GAnimeSearchData_Page_media),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeSearchData_Page deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeSearchData_PageBuilder();

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
                    const FullType.nullable(GAnimeSearchData_Page_media),
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

class _$GAnimeSearchData_Page_mediaSerializer
    implements StructuredSerializer<GAnimeSearchData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GAnimeSearchData_Page_media,
    _$GAnimeSearchData_Page_media,
  ];
  @override
  final String wireName = 'GAnimeSearchData_Page_media';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeSearchData_Page_media object, {
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
            specifiedType: const FullType(GAnimeSearchData_Page_media_title),
          ),
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
              GAnimeSearchData_Page_media_coverImage,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GAnimeSearchData_Page_media deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeSearchData_Page_mediaBuilder();

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
                    GAnimeSearchData_Page_media_title,
                  ),
                )!
                as GAnimeSearchData_Page_media_title,
          );
          break;
        case 'coverImage':
          result.coverImage.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GAnimeSearchData_Page_media_coverImage,
                  ),
                )!
                as GAnimeSearchData_Page_media_coverImage,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeSearchData_Page_media_titleSerializer
    implements StructuredSerializer<GAnimeSearchData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GAnimeSearchData_Page_media_title,
    _$GAnimeSearchData_Page_media_title,
  ];
  @override
  final String wireName = 'GAnimeSearchData_Page_media_title';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeSearchData_Page_media_title object, {
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
  GAnimeSearchData_Page_media_title deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeSearchData_Page_media_titleBuilder();

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

class _$GAnimeSearchData_Page_media_coverImageSerializer
    implements StructuredSerializer<GAnimeSearchData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GAnimeSearchData_Page_media_coverImage,
    _$GAnimeSearchData_Page_media_coverImage,
  ];
  @override
  final String wireName = 'GAnimeSearchData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeSearchData_Page_media_coverImage object, {
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
  GAnimeSearchData_Page_media_coverImage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeSearchData_Page_media_coverImageBuilder();

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

class _$GAnimeSearchData extends GAnimeSearchData {
  @override
  final String G__typename;
  @override
  final GAnimeSearchData_Page? Page;

  factory _$GAnimeSearchData([
    void Function(GAnimeSearchDataBuilder)? updates,
  ]) => (GAnimeSearchDataBuilder()..update(updates))._build();

  _$GAnimeSearchData._({required this.G__typename, this.Page}) : super._();
  @override
  GAnimeSearchData rebuild(void Function(GAnimeSearchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnimeSearchDataBuilder toBuilder() =>
      GAnimeSearchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeSearchData &&
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
    return (newBuiltValueToStringHelper(r'GAnimeSearchData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GAnimeSearchDataBuilder
    implements Builder<GAnimeSearchData, GAnimeSearchDataBuilder> {
  _$GAnimeSearchData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAnimeSearchData_PageBuilder? _Page;
  GAnimeSearchData_PageBuilder get Page =>
      _$this._Page ??= GAnimeSearchData_PageBuilder();
  set Page(GAnimeSearchData_PageBuilder? Page) => _$this._Page = Page;

  GAnimeSearchDataBuilder() {
    GAnimeSearchData._initializeBuilder(this);
  }

  GAnimeSearchDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeSearchData other) {
    _$v = other as _$GAnimeSearchData;
  }

  @override
  void update(void Function(GAnimeSearchDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeSearchData build() => _build();

  _$GAnimeSearchData _build() {
    _$GAnimeSearchData _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeSearchData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeSearchData',
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
          r'GAnimeSearchData',
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

class _$GAnimeSearchData_Page extends GAnimeSearchData_Page {
  @override
  final String G__typename;
  @override
  final BuiltList<GAnimeSearchData_Page_media?>? media;

  factory _$GAnimeSearchData_Page([
    void Function(GAnimeSearchData_PageBuilder)? updates,
  ]) => (GAnimeSearchData_PageBuilder()..update(updates))._build();

  _$GAnimeSearchData_Page._({required this.G__typename, this.media})
    : super._();
  @override
  GAnimeSearchData_Page rebuild(
    void Function(GAnimeSearchData_PageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeSearchData_PageBuilder toBuilder() =>
      GAnimeSearchData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeSearchData_Page &&
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
    return (newBuiltValueToStringHelper(r'GAnimeSearchData_Page')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GAnimeSearchData_PageBuilder
    implements Builder<GAnimeSearchData_Page, GAnimeSearchData_PageBuilder> {
  _$GAnimeSearchData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAnimeSearchData_Page_media?>? _media;
  ListBuilder<GAnimeSearchData_Page_media?> get media =>
      _$this._media ??= ListBuilder<GAnimeSearchData_Page_media?>();
  set media(ListBuilder<GAnimeSearchData_Page_media?>? media) =>
      _$this._media = media;

  GAnimeSearchData_PageBuilder() {
    GAnimeSearchData_Page._initializeBuilder(this);
  }

  GAnimeSearchData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeSearchData_Page other) {
    _$v = other as _$GAnimeSearchData_Page;
  }

  @override
  void update(void Function(GAnimeSearchData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeSearchData_Page build() => _build();

  _$GAnimeSearchData_Page _build() {
    _$GAnimeSearchData_Page _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeSearchData_Page._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeSearchData_Page',
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
          r'GAnimeSearchData_Page',
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

class _$GAnimeSearchData_Page_media extends GAnimeSearchData_Page_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GAnimeSearchData_Page_media_title? title;
  @override
  final GAnimeSearchData_Page_media_coverImage? coverImage;

  factory _$GAnimeSearchData_Page_media([
    void Function(GAnimeSearchData_Page_mediaBuilder)? updates,
  ]) => (GAnimeSearchData_Page_mediaBuilder()..update(updates))._build();

  _$GAnimeSearchData_Page_media._({
    required this.G__typename,
    required this.id,
    this.title,
    this.coverImage,
  }) : super._();
  @override
  GAnimeSearchData_Page_media rebuild(
    void Function(GAnimeSearchData_Page_mediaBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeSearchData_Page_mediaBuilder toBuilder() =>
      GAnimeSearchData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeSearchData_Page_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeSearchData_Page_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GAnimeSearchData_Page_mediaBuilder
    implements
        Builder<
          GAnimeSearchData_Page_media,
          GAnimeSearchData_Page_mediaBuilder
        > {
  _$GAnimeSearchData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GAnimeSearchData_Page_media_titleBuilder? _title;
  GAnimeSearchData_Page_media_titleBuilder get title =>
      _$this._title ??= GAnimeSearchData_Page_media_titleBuilder();
  set title(GAnimeSearchData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  GAnimeSearchData_Page_media_coverImageBuilder? _coverImage;
  GAnimeSearchData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= GAnimeSearchData_Page_media_coverImageBuilder();
  set coverImage(GAnimeSearchData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GAnimeSearchData_Page_mediaBuilder() {
    GAnimeSearchData_Page_media._initializeBuilder(this);
  }

  GAnimeSearchData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeSearchData_Page_media other) {
    _$v = other as _$GAnimeSearchData_Page_media;
  }

  @override
  void update(void Function(GAnimeSearchData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeSearchData_Page_media build() => _build();

  _$GAnimeSearchData_Page_media _build() {
    _$GAnimeSearchData_Page_media _$result;
    try {
      _$result =
          _$v ??
          _$GAnimeSearchData_Page_media._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAnimeSearchData_Page_media',
              'G__typename',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'GAnimeSearchData_Page_media',
              'id',
            ),
            title: _title?.build(),
            coverImage: _coverImage?.build(),
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
          r'GAnimeSearchData_Page_media',
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

class _$GAnimeSearchData_Page_media_title
    extends GAnimeSearchData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? english;

  factory _$GAnimeSearchData_Page_media_title([
    void Function(GAnimeSearchData_Page_media_titleBuilder)? updates,
  ]) => (GAnimeSearchData_Page_media_titleBuilder()..update(updates))._build();

  _$GAnimeSearchData_Page_media_title._({
    required this.G__typename,
    this.english,
  }) : super._();
  @override
  GAnimeSearchData_Page_media_title rebuild(
    void Function(GAnimeSearchData_Page_media_titleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeSearchData_Page_media_titleBuilder toBuilder() =>
      GAnimeSearchData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeSearchData_Page_media_title &&
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
    return (newBuiltValueToStringHelper(r'GAnimeSearchData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('english', english))
        .toString();
  }
}

class GAnimeSearchData_Page_media_titleBuilder
    implements
        Builder<
          GAnimeSearchData_Page_media_title,
          GAnimeSearchData_Page_media_titleBuilder
        > {
  _$GAnimeSearchData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  GAnimeSearchData_Page_media_titleBuilder() {
    GAnimeSearchData_Page_media_title._initializeBuilder(this);
  }

  GAnimeSearchData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _english = $v.english;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeSearchData_Page_media_title other) {
    _$v = other as _$GAnimeSearchData_Page_media_title;
  }

  @override
  void update(
    void Function(GAnimeSearchData_Page_media_titleBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeSearchData_Page_media_title build() => _build();

  _$GAnimeSearchData_Page_media_title _build() {
    final _$result =
        _$v ??
        _$GAnimeSearchData_Page_media_title._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAnimeSearchData_Page_media_title',
            'G__typename',
          ),
          english: english,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAnimeSearchData_Page_media_coverImage
    extends GAnimeSearchData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? medium;

  factory _$GAnimeSearchData_Page_media_coverImage([
    void Function(GAnimeSearchData_Page_media_coverImageBuilder)? updates,
  ]) => (GAnimeSearchData_Page_media_coverImageBuilder()..update(updates))
      ._build();

  _$GAnimeSearchData_Page_media_coverImage._({
    required this.G__typename,
    this.medium,
  }) : super._();
  @override
  GAnimeSearchData_Page_media_coverImage rebuild(
    void Function(GAnimeSearchData_Page_media_coverImageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAnimeSearchData_Page_media_coverImageBuilder toBuilder() =>
      GAnimeSearchData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeSearchData_Page_media_coverImage &&
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
            r'GAnimeSearchData_Page_media_coverImage',
          )
          ..add('G__typename', G__typename)
          ..add('medium', medium))
        .toString();
  }
}

class GAnimeSearchData_Page_media_coverImageBuilder
    implements
        Builder<
          GAnimeSearchData_Page_media_coverImage,
          GAnimeSearchData_Page_media_coverImageBuilder
        > {
  _$GAnimeSearchData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  GAnimeSearchData_Page_media_coverImageBuilder() {
    GAnimeSearchData_Page_media_coverImage._initializeBuilder(this);
  }

  GAnimeSearchData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeSearchData_Page_media_coverImage other) {
    _$v = other as _$GAnimeSearchData_Page_media_coverImage;
  }

  @override
  void update(
    void Function(GAnimeSearchData_Page_media_coverImageBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeSearchData_Page_media_coverImage build() => _build();

  _$GAnimeSearchData_Page_media_coverImage _build() {
    final _$result =
        _$v ??
        _$GAnimeSearchData_Page_media_coverImage._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAnimeSearchData_Page_media_coverImage',
            'G__typename',
          ),
          medium: medium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
