import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_barbershop_record.g.dart';

abstract class MyBarbershopRecord
    implements Built<MyBarbershopRecord, MyBarbershopRecordBuilder> {
  static Serializer<MyBarbershopRecord> get serializer =>
      _$myBarbershopRecordSerializer;

  String? get industry;

  @BuiltValueField(wireName: 'business_name')
  String? get businessName;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  String? get title;

  String? get description;

  String? get duration;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'end_date')
  DateTime? get endDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MyBarbershopRecordBuilder builder) => builder
    ..industry = ''
    ..businessName = ''
    ..title = ''
    ..description = ''
    ..duration = ''
    ..email = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MyBarbershop');

  static Stream<MyBarbershopRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyBarbershopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyBarbershopRecord._();
  factory MyBarbershopRecord(
          [void Function(MyBarbershopRecordBuilder) updates]) =
      _$MyBarbershopRecord;

  static MyBarbershopRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyBarbershopRecordData({
  String? industry,
  String? businessName,
  DateTime? startDate,
  String? title,
  String? description,
  String? duration,
  DateTime? createdAt,
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  DateTime? endDate,
}) {
  final firestoreData = serializers.toFirestore(
    MyBarbershopRecord.serializer,
    MyBarbershopRecord(
      (m) => m
        ..industry = industry
        ..businessName = businessName
        ..startDate = startDate
        ..title = title
        ..description = description
        ..duration = duration
        ..createdAt = createdAt
        ..email = email
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..endDate = endDate,
    ),
  );

  return firestoreData;
}
