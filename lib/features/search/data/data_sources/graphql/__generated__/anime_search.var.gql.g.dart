// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_search.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAnimeSearchVars> _$gAnimeSearchVarsSerializer =
    _$GAnimeSearchVarsSerializer();

class _$GAnimeSearchVarsSerializer
    implements StructuredSerializer<GAnimeSearchVars> {
  @override
  final Iterable<Type> types = const [GAnimeSearchVars, _$GAnimeSearchVars];
  @override
  final String wireName = 'GAnimeSearchVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeSearchVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
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
    return result;
  }

  @override
  GAnimeSearchVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeSearchVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'search':
          result.search =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
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
      }
    }

    return result.build();
  }
}

class _$GAnimeSearchVars extends GAnimeSearchVars {
  @override
  final String? search;
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GAnimeSearchVars([
    void Function(GAnimeSearchVarsBuilder)? updates,
  ]) => (GAnimeSearchVarsBuilder()..update(updates))._build();

  _$GAnimeSearchVars._({this.search, this.page, this.perPage}) : super._();
  @override
  GAnimeSearchVars rebuild(void Function(GAnimeSearchVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnimeSearchVarsBuilder toBuilder() =>
      GAnimeSearchVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeSearchVars &&
        search == other.search &&
        page == other.page &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAnimeSearchVars')
          ..add('search', search)
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GAnimeSearchVarsBuilder
    implements Builder<GAnimeSearchVars, GAnimeSearchVarsBuilder> {
  _$GAnimeSearchVars? _$v;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GAnimeSearchVarsBuilder();

  GAnimeSearchVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search;
      _page = $v.page;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeSearchVars other) {
    _$v = other as _$GAnimeSearchVars;
  }

  @override
  void update(void Function(GAnimeSearchVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeSearchVars build() => _build();

  _$GAnimeSearchVars _build() {
    final _$result =
        _$v ??
        _$GAnimeSearchVars._(search: search, page: page, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
