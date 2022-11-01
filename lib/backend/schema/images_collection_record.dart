import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'images_collection_record.g.dart';

abstract class ImagesCollectionRecord
    implements Built<ImagesCollectionRecord, ImagesCollectionRecordBuilder> {
  static Serializer<ImagesCollectionRecord> get serializer =>
      _$imagesCollectionRecordSerializer;

  @BuiltValueField(wireName: 'post_photo')
  String? get postPhoto;

  @BuiltValueField(wireName: 'post_title')
  String? get postTitle;

  @BuiltValueField(wireName: 'post_description')
  String? get postDescription;

  @BuiltValueField(wireName: 'post_user')
  DocumentReference? get postUser;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  BuiltList<DocumentReference>? get likes;

  @BuiltValueField(wireName: 'num_votes')
  int? get numVotes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ImagesCollectionRecordBuilder builder) =>
      builder
        ..postPhoto = ''
        ..postTitle = ''
        ..postDescription = ''
        ..likes = ListBuilder()
        ..numVotes = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('imagesCollection')
          : FirebaseFirestore.instance.collectionGroup('imagesCollection');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('imagesCollection').doc();

  static Stream<ImagesCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagesCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagesCollectionRecord._();
  factory ImagesCollectionRecord(
          [void Function(ImagesCollectionRecordBuilder) updates]) =
      _$ImagesCollectionRecord;

  static ImagesCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagesCollectionRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numVotes,
}) {
  final firestoreData = serializers.toFirestore(
    ImagesCollectionRecord.serializer,
    ImagesCollectionRecord(
      (i) => i
        ..postPhoto = postPhoto
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..postUser = postUser
        ..timePosted = timePosted
        ..likes = null
        ..numVotes = numVotes,
    ),
  );

  return firestoreData;
}
