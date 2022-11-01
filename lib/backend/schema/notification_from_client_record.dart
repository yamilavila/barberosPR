import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notification_from_client_record.g.dart';

abstract class NotificationFromClientRecord
    implements
        Built<NotificationFromClientRecord,
            NotificationFromClientRecordBuilder> {
  static Serializer<NotificationFromClientRecord> get serializer =>
      _$notificationFromClientRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get bio;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  DateTime? get clientBookingDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(NotificationFromClientRecordBuilder builder) =>
      builder
        ..email = ''
        ..displayName = ''
        ..photoUrl = ''
        ..uid = ''
        ..phoneNumber = ''
        ..bio = ''
        ..userName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notificationFromClient')
          : FirebaseFirestore.instance
              .collectionGroup('notificationFromClient');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('notificationFromClient').doc();

  static Stream<NotificationFromClientRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationFromClientRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationFromClientRecord._();
  factory NotificationFromClientRecord(
          [void Function(NotificationFromClientRecordBuilder) updates]) =
      _$NotificationFromClientRecord;

  static NotificationFromClientRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationFromClientRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  DateTime? clientBookingDate,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationFromClientRecord.serializer,
    NotificationFromClientRecord(
      (n) => n
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..bio = bio
        ..userName = userName
        ..clientBookingDate = clientBookingDate,
    ),
  );

  return firestoreData;
}
