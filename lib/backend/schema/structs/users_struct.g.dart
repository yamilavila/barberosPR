// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersStruct> _$usersStructSerializer = new _$UsersStructSerializer();

class _$UsersStructSerializer implements StructuredSerializer<UsersStruct> {
  @override
  final Iterable<Type> types = const [UsersStruct, _$UsersStruct];
  @override
  final String wireName = 'UsersStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid,
          specifiedType: const FullType(UsersStruct)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(UsersStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirmPassword;
    if (value != null) {
      result
        ..add('confirmPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoProfile;
    if (value != null) {
      result
        ..add('photoProfile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UsersStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid.replace(serializers.deserialize(value,
              specifiedType: const FullType(UsersStruct))! as UsersStruct);
          break;
        case 'email':
          result.email.replace(serializers.deserialize(value,
              specifiedType: const FullType(UsersStruct))! as UsersStruct);
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'confirmPassword':
          result.confirmPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photoProfile':
          result.photoProfile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$UsersStruct extends UsersStruct {
  @override
  final String? name;
  @override
  final UsersStruct uid;
  @override
  final UsersStruct email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final DateTime? createdTime;
  @override
  final String? photoProfile;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$UsersStruct([void Function(UsersStructBuilder)? updates]) =>
      (new UsersStructBuilder()..update(updates))._build();

  _$UsersStruct._(
      {this.name,
      required this.uid,
      required this.email,
      this.password,
      this.confirmPassword,
      this.createdTime,
      this.photoProfile,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, r'UsersStruct', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, r'UsersStruct', 'email');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'UsersStruct', 'firestoreUtilData');
  }

  @override
  UsersStruct rebuild(void Function(UsersStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersStructBuilder toBuilder() => new UsersStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersStruct &&
        name == other.name &&
        uid == other.uid &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword &&
        createdTime == other.createdTime &&
        photoProfile == other.photoProfile &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), uid.hashCode),
                            email.hashCode),
                        password.hashCode),
                    confirmPassword.hashCode),
                createdTime.hashCode),
            photoProfile.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersStruct')
          ..add('name', name)
          ..add('uid', uid)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword)
          ..add('createdTime', createdTime)
          ..add('photoProfile', photoProfile)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class UsersStructBuilder implements Builder<UsersStruct, UsersStructBuilder> {
  _$UsersStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UsersStructBuilder? _uid;
  UsersStructBuilder get uid => _$this._uid ??= new UsersStructBuilder();
  set uid(UsersStructBuilder? uid) => _$this._uid = uid;

  UsersStructBuilder? _email;
  UsersStructBuilder get email => _$this._email ??= new UsersStructBuilder();
  set email(UsersStructBuilder? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _photoProfile;
  String? get photoProfile => _$this._photoProfile;
  set photoProfile(String? photoProfile) => _$this._photoProfile = photoProfile;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  UsersStructBuilder() {
    UsersStruct._initializeBuilder(this);
  }

  UsersStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _uid = $v.uid.toBuilder();
      _email = $v.email.toBuilder();
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _createdTime = $v.createdTime;
      _photoProfile = $v.photoProfile;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersStruct;
  }

  @override
  void update(void Function(UsersStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersStruct build() => _build();

  _$UsersStruct _build() {
    _$UsersStruct _$result;
    try {
      _$result = _$v ??
          new _$UsersStruct._(
              name: name,
              uid: uid.build(),
              email: email.build(),
              password: password,
              confirmPassword: confirmPassword,
              createdTime: createdTime,
              photoProfile: photoProfile,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'UsersStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uid';
        uid.build();
        _$failedField = 'email';
        email.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
