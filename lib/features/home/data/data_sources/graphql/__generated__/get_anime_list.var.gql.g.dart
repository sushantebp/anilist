// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_anime_list.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAnimeListVars> _$gGetAnimeListVarsSerializer =
    _$GGetAnimeListVarsSerializer();

class _$GGetAnimeListVarsSerializer
    implements StructuredSerializer<GGetAnimeListVars> {
  @override
  final Iterable<Type> types = const [GGetAnimeListVars, _$GGetAnimeListVars];
  @override
  final String wireName = 'GGetAnimeListVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAnimeListVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GGetAnimeListVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAnimeListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'perPage':
          result.perPage =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'search':
          result.search =
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

class _$GGetAnimeListVars extends GGetAnimeListVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final String? search;

  factory _$GGetAnimeListVars([
    void Function(GGetAnimeListVarsBuilder)? updates,
  ]) => (GGetAnimeListVarsBuilder()..update(updates))._build();

  _$GGetAnimeListVars._({this.page, this.perPage, this.search}) : super._();
  @override
  GGetAnimeListVars rebuild(void Function(GGetAnimeListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAnimeListVarsBuilder toBuilder() =>
      GGetAnimeListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAnimeListVars &&
        page == other.page &&
        perPage == other.perPage &&
        search == other.search;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAnimeListVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('search', search))
        .toString();
  }
}

class GGetAnimeListVarsBuilder
    implements Builder<GGetAnimeListVars, GGetAnimeListVarsBuilder> {
  _$GGetAnimeListVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  GGetAnimeListVarsBuilder();

  GGetAnimeListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _search = $v.search;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAnimeListVars other) {
    _$v = other as _$GGetAnimeListVars;
  }

  @override
  void update(void Function(GGetAnimeListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAnimeListVars build() => _build();

  _$GGetAnimeListVars _build() {
    final _$result =
        _$v ??
        _$GGetAnimeListVars._(page: page, perPage: perPage, search: search);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
