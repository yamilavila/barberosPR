// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HorariosRecord> _$horariosRecordSerializer =
    new _$HorariosRecordSerializer();

class _$HorariosRecordSerializer
    implements StructuredSerializer<HorariosRecord> {
  @override
  final Iterable<Type> types = const [HorariosRecord, _$HorariosRecord];
  @override
  final String wireName = 'HorariosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HorariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.mondayHour;
    if (value != null) {
      result
        ..add('mondayHour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tuesdayHour;
    if (value != null) {
      result
        ..add('tuesdayHour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wednesdayHour;
    if (value != null) {
      result
        ..add('wednesdayHour')
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
  HorariosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HorariosRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'mondayHour':
          result.mondayHour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tuesdayHour':
          result.tuesdayHour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wednesdayHour':
          result.wednesdayHour = serializers.deserialize(value,
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

class _$HorariosRecord extends HorariosRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final double? price;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final int? mondayHour;
  @override
  final int? tuesdayHour;
  @override
  final int? wednesdayHour;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HorariosRecord([void Function(HorariosRecordBuilder)? updates]) =>
      (new HorariosRecordBuilder()..update(updates))._build();

  _$HorariosRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.price,
      this.createdAt,
      this.modifiedAt,
      this.mondayHour,
      this.tuesdayHour,
      this.wednesdayHour,
      this.ffRef})
      : super._();

  @override
  HorariosRecord rebuild(void Function(HorariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HorariosRecordBuilder toBuilder() =>
      new HorariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HorariosRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        price == other.price &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        mondayHour == other.mondayHour &&
        tuesdayHour == other.tuesdayHour &&
        wednesdayHour == other.wednesdayHour &&
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
                                    $jc($jc(0, name.hashCode),
                                        description.hashCode),
                                    specifications.hashCode),
                                price.hashCode),
                            createdAt.hashCode),
                        modifiedAt.hashCode),
                    mondayHour.hashCode),
                tuesdayHour.hashCode),
            wednesdayHour.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HorariosRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('price', price)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('mondayHour', mondayHour)
          ..add('tuesdayHour', tuesdayHour)
          ..add('wednesdayHour', wednesdayHour)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HorariosRecordBuilder
    implements Builder<HorariosRecord, HorariosRecordBuilder> {
  _$HorariosRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  int? _mondayHour;
  int? get mondayHour => _$this._mondayHour;
  set mondayHour(int? mondayHour) => _$this._mondayHour = mondayHour;

  int? _tuesdayHour;
  int? get tuesdayHour => _$this._tuesdayHour;
  set tuesdayHour(int? tuesdayHour) => _$this._tuesdayHour = tuesdayHour;

  int? _wednesdayHour;
  int? get wednesdayHour => _$this._wednesdayHour;
  set wednesdayHour(int? wednesdayHour) =>
      _$this._wednesdayHour = wednesdayHour;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HorariosRecordBuilder() {
    HorariosRecord._initializeBuilder(this);
  }

  HorariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _price = $v.price;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _mondayHour = $v.mondayHour;
      _tuesdayHour = $v.tuesdayHour;
      _wednesdayHour = $v.wednesdayHour;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HorariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HorariosRecord;
  }

  @override
  void update(void Function(HorariosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HorariosRecord build() => _build();

  _$HorariosRecord _build() {
    final _$result = _$v ??
        new _$HorariosRecord._(
            name: name,
            description: description,
            specifications: specifications,
            price: price,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            mondayHour: mondayHour,
            tuesdayHour: tuesdayHour,
            wednesdayHour: wednesdayHour,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
