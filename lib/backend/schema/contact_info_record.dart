import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contact_info_record.g.dart';

abstract class ContactInfoRecord
    implements Built<ContactInfoRecord, ContactInfoRecordBuilder> {
  static Serializer<ContactInfoRecord> get serializer =>
      _$contactInfoRecordSerializer;

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

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ContactInfoRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..bio = ''
    ..userName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contact_info')
          : FirebaseFirestore.instance.collectionGroup('contact_info');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('contact_info').doc();

  static Stream<ContactInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContactInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContactInfoRecord._();
  factory ContactInfoRecord([void Function(ContactInfoRecordBuilder) updates]) =
      _$ContactInfoRecord;

  static ContactInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContactInfoRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
}) {
  final firestoreData = serializers.toFirestore(
    ContactInfoRecord.serializer,
    ContactInfoRecord(
      (c) => c
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..bio = bio
        ..userName = userName,
    ),
  );

  return firestoreData;
}
