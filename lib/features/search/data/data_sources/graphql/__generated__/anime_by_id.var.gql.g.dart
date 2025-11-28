// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_by_id.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAnimeByIdVars> _$gAnimeByIdVarsSerializer =
    _$GAnimeByIdVarsSerializer();

class _$GAnimeByIdVarsSerializer
    implements StructuredSerializer<GAnimeByIdVars> {
  @override
  final Iterable<Type> types = const [GAnimeByIdVars, _$GAnimeByIdVars];
  @override
  final String wireName = 'GAnimeByIdVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAnimeByIdVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GAnimeByIdVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAnimeByIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAnimeByIdVars extends GAnimeByIdVars {
  @override
  final int id;

  factory _$GAnimeByIdVars([void Function(GAnimeByIdVarsBuilder)? updates]) =>
      (GAnimeByIdVarsBuilder()..update(updates))._build();

  _$GAnimeByIdVars._({required this.id}) : super._();
  @override
  GAnimeByIdVars rebuild(void Function(GAnimeByIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAnimeByIdVarsBuilder toBuilder() => GAnimeByIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAnimeByIdVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GAnimeByIdVars',
    )..add('id', id)).toString();
  }
}

class GAnimeByIdVarsBuilder
    implements Builder<GAnimeByIdVars, GAnimeByIdVarsBuilder> {
  _$GAnimeByIdVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GAnimeByIdVarsBuilder();

  GAnimeByIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAnimeByIdVars other) {
    _$v = other as _$GAnimeByIdVars;
  }

  @override
  void update(void Function(GAnimeByIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAnimeByIdVars build() => _build();

  _$GAnimeByIdVars _build() {
    final _$result =
        _$v ??
        _$GAnimeByIdVars._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GAnimeByIdVars',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
