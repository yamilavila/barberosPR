import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usercalendar_record.g.dart';

abstract class UsercalendarRecord
    implements Built<UsercalendarRecord, UsercalendarRecordBuilder> {
  static Serializer<UsercalendarRecord> get serializer =>
      _$usercalendarRecordSerializer;

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

  static void _initializeBuilder(UsercalendarRecordBuilder builder) => builder
    ..usersAssigned = ListBuilder()
    ..projectName = ''
    ..description = ''
    ..numberTasks = 0
    ..completedTasks = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('usercalendar')
          : FirebaseFirestore.instance.collectionGroup('usercalendar');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('usercalendar').doc();

  static Stream<UsercalendarRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsercalendarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsercalendarRecord._();
  factory UsercalendarRecord(
          [void Function(UsercalendarRecordBuilder) updates]) =
      _$UsercalendarRecord;

  static UsercalendarRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsercalendarRecordData({
  DocumentReference? owner,
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
}) {
  final firestoreData = serializers.toFirestore(
    UsercalendarRecord.serializer,
    UsercalendarRecord(
      (u) => u
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
