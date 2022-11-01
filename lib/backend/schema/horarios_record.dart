import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'horarios_record.g.dart';

abstract class HorariosRecord
    implements Built<HorariosRecord, HorariosRecordBuilder> {
  static Serializer<HorariosRecord> get serializer =>
      _$horariosRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  int? get mondayHour;

  int? get tuesdayHour;

  int? get wednesdayHour;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(HorariosRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..mondayHour = 0
    ..tuesdayHour = 0
    ..wednesdayHour = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('horarios')
          : FirebaseFirestore.instance.collectionGroup('horarios');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('horarios').doc();

  static Stream<HorariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HorariosRecord._();
  factory HorariosRecord([void Function(HorariosRecordBuilder) updates]) =
      _$HorariosRecord;

  static HorariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHorariosRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? mondayHour,
  int? tuesdayHour,
  int? wednesdayHour,
}) {
  final firestoreData = serializers.toFirestore(
    HorariosRecord.serializer,
    HorariosRecord(
      (h) => h
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..mondayHour = mondayHour
        ..tuesdayHour = tuesdayHour
        ..wednesdayHour = wednesdayHour,
    ),
  );

  return firestoreData;
}
