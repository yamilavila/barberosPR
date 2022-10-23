// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_calendar_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserCalendarStruct> _$userCalendarStructSerializer =
    new _$UserCalendarStructSerializer();

class _$UserCalendarStructSerializer
    implements StructuredSerializer<UserCalendarStruct> {
  @override
  final Iterable<Type> types = const [UserCalendarStruct, _$UserCalendarStruct];
  @override
  final String wireName = 'UserCalendarStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserCalendarStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.citas;
    if (value != null) {
      result
        ..add('citas')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DateTime)])));
    }
    return result;
  }

  @override
  UserCalendarStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserCalendarStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'citas':
          result.citas.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$UserCalendarStruct extends UserCalendarStruct {
  @override
  final BuiltList<DateTime>? citas;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$UserCalendarStruct(
          [void Function(UserCalendarStructBuilder)? updates]) =>
      (new UserCalendarStructBuilder()..update(updates))._build();

  _$UserCalendarStruct._({this.citas, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'UserCalendarStruct', 'firestoreUtilData');
  }

  @override
  UserCalendarStruct rebuild(
          void Function(UserCalendarStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCalendarStructBuilder toBuilder() =>
      new UserCalendarStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCalendarStruct &&
        citas == other.citas &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, citas.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCalendarStruct')
          ..add('citas', citas)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class UserCalendarStructBuilder
    implements Builder<UserCalendarStruct, UserCalendarStructBuilder> {
  _$UserCalendarStruct? _$v;

  ListBuilder<DateTime>? _citas;
  ListBuilder<DateTime> get citas =>
      _$this._citas ??= new ListBuilder<DateTime>();
  set citas(ListBuilder<DateTime>? citas) => _$this._citas = citas;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  UserCalendarStructBuilder() {
    UserCalendarStruct._initializeBuilder(this);
  }

  UserCalendarStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _citas = $v.citas?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCalendarStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCalendarStruct;
  }

  @override
  void update(void Function(UserCalendarStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCalendarStruct build() => _build();

  _$UserCalendarStruct _build() {
    _$UserCalendarStruct _$result;
    try {
      _$result = _$v ??
          new _$UserCalendarStruct._(
              citas: _citas?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'UserCalendarStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citas';
        _citas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserCalendarStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
