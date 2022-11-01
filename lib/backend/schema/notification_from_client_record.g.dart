// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_from_client_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationFromClientRecord>
    _$notificationFromClientRecordSerializer =
    new _$NotificationFromClientRecordSerializer();

class _$NotificationFromClientRecordSerializer
    implements StructuredSerializer<NotificationFromClientRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationFromClientRecord,
    _$NotificationFromClientRecord
  ];
  @override
  final String wireName = 'NotificationFromClientRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationFromClientRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientBookingDate;
    if (value != null) {
      result
        ..add('clientBookingDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NotificationFromClientRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationFromClientRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'clientBookingDate':
          result.clientBookingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationFromClientRecord extends NotificationFromClientRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DateTime? editedTime;
  @override
  final String? bio;
  @override
  final String? userName;
  @override
  final DateTime? clientBookingDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationFromClientRecord(
          [void Function(NotificationFromClientRecordBuilder)? updates]) =>
      (new NotificationFromClientRecordBuilder()..update(updates))._build();

  _$NotificationFromClientRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.editedTime,
      this.bio,
      this.userName,
      this.clientBookingDate,
      this.ffRef})
      : super._();

  @override
  NotificationFromClientRecord rebuild(
          void Function(NotificationFromClientRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationFromClientRecordBuilder toBuilder() =>
      new NotificationFromClientRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationFromClientRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        editedTime == other.editedTime &&
        bio == other.bio &&
        userName == other.userName &&
        clientBookingDate == other.clientBookingDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, email.hashCode),
                                            displayName.hashCode),
                                        photoUrl.hashCode),
                                    uid.hashCode),
                                createdTime.hashCode),
                            phoneNumber.hashCode),
                        editedTime.hashCode),
                    bio.hashCode),
                userName.hashCode),
            clientBookingDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationFromClientRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('editedTime', editedTime)
          ..add('bio', bio)
          ..add('userName', userName)
          ..add('clientBookingDate', clientBookingDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationFromClientRecordBuilder
    implements
        Builder<NotificationFromClientRecord,
            NotificationFromClientRecordBuilder> {
  _$NotificationFromClientRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DateTime? _clientBookingDate;
  DateTime? get clientBookingDate => _$this._clientBookingDate;
  set clientBookingDate(DateTime? clientBookingDate) =>
      _$this._clientBookingDate = clientBookingDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationFromClientRecordBuilder() {
    NotificationFromClientRecord._initializeBuilder(this);
  }

  NotificationFromClientRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _editedTime = $v.editedTime;
      _bio = $v.bio;
      _userName = $v.userName;
      _clientBookingDate = $v.clientBookingDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationFromClientRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationFromClientRecord;
  }

  @override
  void update(void Function(NotificationFromClientRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationFromClientRecord build() => _build();

  _$NotificationFromClientRecord _build() {
    final _$result = _$v ??
        new _$NotificationFromClientRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            editedTime: editedTime,
            bio: bio,
            userName: userName,
            clientBookingDate: clientBookingDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
