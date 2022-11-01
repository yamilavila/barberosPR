// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagesCollectionRecord> _$imagesCollectionRecordSerializer =
    new _$ImagesCollectionRecordSerializer();

class _$ImagesCollectionRecordSerializer
    implements StructuredSerializer<ImagesCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    ImagesCollectionRecord,
    _$ImagesCollectionRecord
  ];
  @override
  final String wireName = 'ImagesCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ImagesCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postPhoto;
    if (value != null) {
      result
        ..add('post_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postTitle;
    if (value != null) {
      result
        ..add('post_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postDescription;
    if (value != null) {
      result
        ..add('post_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postUser;
    if (value != null) {
      result
        ..add('post_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.timePosted;
    if (value != null) {
      result
        ..add('time_posted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.numVotes;
    if (value != null) {
      result
        ..add('num_votes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ImagesCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'post_photo':
          result.postPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_title':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_description':
          result.postDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_user':
          result.postUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'time_posted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'num_votes':
          result.numVotes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ImagesCollectionRecord extends ImagesCollectionRecord {
  @override
  final String? postPhoto;
  @override
  final String? postTitle;
  @override
  final String? postDescription;
  @override
  final DocumentReference<Object?>? postUser;
  @override
  final DateTime? timePosted;
  @override
  final BuiltList<DocumentReference<Object?>>? likes;
  @override
  final int? numVotes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagesCollectionRecord(
          [void Function(ImagesCollectionRecordBuilder)? updates]) =>
      (new ImagesCollectionRecordBuilder()..update(updates))._build();

  _$ImagesCollectionRecord._(
      {this.postPhoto,
      this.postTitle,
      this.postDescription,
      this.postUser,
      this.timePosted,
      this.likes,
      this.numVotes,
      this.ffRef})
      : super._();

  @override
  ImagesCollectionRecord rebuild(
          void Function(ImagesCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesCollectionRecordBuilder toBuilder() =>
      new ImagesCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagesCollectionRecord &&
        postPhoto == other.postPhoto &&
        postTitle == other.postTitle &&
        postDescription == other.postDescription &&
        postUser == other.postUser &&
        timePosted == other.timePosted &&
        likes == other.likes &&
        numVotes == other.numVotes &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, postPhoto.hashCode), postTitle.hashCode),
                            postDescription.hashCode),
                        postUser.hashCode),
                    timePosted.hashCode),
                likes.hashCode),
            numVotes.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagesCollectionRecord')
          ..add('postPhoto', postPhoto)
          ..add('postTitle', postTitle)
          ..add('postDescription', postDescription)
          ..add('postUser', postUser)
          ..add('timePosted', timePosted)
          ..add('likes', likes)
          ..add('numVotes', numVotes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagesCollectionRecordBuilder
    implements Builder<ImagesCollectionRecord, ImagesCollectionRecordBuilder> {
  _$ImagesCollectionRecord? _$v;

  String? _postPhoto;
  String? get postPhoto => _$this._postPhoto;
  set postPhoto(String? postPhoto) => _$this._postPhoto = postPhoto;

  String? _postTitle;
  String? get postTitle => _$this._postTitle;
  set postTitle(String? postTitle) => _$this._postTitle = postTitle;

  String? _postDescription;
  String? get postDescription => _$this._postDescription;
  set postDescription(String? postDescription) =>
      _$this._postDescription = postDescription;

  DocumentReference<Object?>? _postUser;
  DocumentReference<Object?>? get postUser => _$this._postUser;
  set postUser(DocumentReference<Object?>? postUser) =>
      _$this._postUser = postUser;

  DateTime? _timePosted;
  DateTime? get timePosted => _$this._timePosted;
  set timePosted(DateTime? timePosted) => _$this._timePosted = timePosted;

  ListBuilder<DocumentReference<Object?>>? _likes;
  ListBuilder<DocumentReference<Object?>> get likes =>
      _$this._likes ??= new ListBuilder<DocumentReference<Object?>>();
  set likes(ListBuilder<DocumentReference<Object?>>? likes) =>
      _$this._likes = likes;

  int? _numVotes;
  int? get numVotes => _$this._numVotes;
  set numVotes(int? numVotes) => _$this._numVotes = numVotes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagesCollectionRecordBuilder() {
    ImagesCollectionRecord._initializeBuilder(this);
  }

  ImagesCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postPhoto = $v.postPhoto;
      _postTitle = $v.postTitle;
      _postDescription = $v.postDescription;
      _postUser = $v.postUser;
      _timePosted = $v.timePosted;
      _likes = $v.likes?.toBuilder();
      _numVotes = $v.numVotes;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagesCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagesCollectionRecord;
  }

  @override
  void update(void Function(ImagesCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagesCollectionRecord build() => _build();

  _$ImagesCollectionRecord _build() {
    _$ImagesCollectionRecord _$result;
    try {
      _$result = _$v ??
          new _$ImagesCollectionRecord._(
              postPhoto: postPhoto,
              postTitle: postTitle,
              postDescription: postDescription,
              postUser: postUser,
              timePosted: timePosted,
              likes: _likes?.build(),
              numVotes: numVotes,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likes';
        _likes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImagesCollectionRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
