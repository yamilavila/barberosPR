import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_gallery_record.g.dart';

abstract class MyGalleryRecord
    implements Built<MyGalleryRecord, MyGalleryRecordBuilder> {
  static Serializer<MyGalleryRecord> get serializer =>
      _$myGalleryRecordSerializer;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'users_assigned')
  BuiltList<DocumentReference>? get usersAssigned;

  @BuiltValueField(wireName: 'project_name')
  String? get projectName;

  String? get description;

  @BuiltValueField(wireName: 'number_tasks')
  int? get numberTasks;

  @BuiltValueField(wireName: 'completed_tasks')
  int? get completedTasks;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MyGalleryRecordBuilder builder) => builder
    ..usersAssigned = ListBuilder()
    ..projectName = ''
    ..description = ''
    ..numberTasks = 0
    ..completedTasks = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('myGallery')
          : FirebaseFirestore.instance.collectionGroup('myGallery');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('myGallery').doc();

  static Stream<MyGalleryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyGalleryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyGalleryRecord._();
  factory MyGalleryRecord([void Function(MyGalleryRecordBuilder) updates]) =
      _$MyGalleryRecord;

  static MyGalleryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyGalleryRecordData({
  DocumentReference? owner,
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
}) {
  final firestoreData = serializers.toFirestore(
    MyGalleryRecord.serializer,
    MyGalleryRecord(
      (m) => m
        ..owner = owner
        ..usersAssigned = null
        ..projectName = projectName
        ..description = description
        ..numberTasks = numberTasks
        ..completedTasks = completedTasks
        ..lastEdited = lastEdited
        ..timeCreated = timeCreated,
    ),
  );

  return firestoreData;
}
