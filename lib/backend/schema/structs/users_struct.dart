import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_struct.g.dart';

abstract class UsersStruct implements Built<UsersStruct, UsersStructBuilder> {
  static Serializer<UsersStruct> get serializer => _$usersStructSerializer;

  String? get name;

  UsersStruct get uid;

  UsersStruct get email;

  String? get password;

  String? get confirmPassword;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get photoProfile;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(UsersStructBuilder builder) => builder
    ..name = ''
    ..uid = UsersStructBuilder()
    ..email = UsersStructBuilder()
    ..password = ''
    ..confirmPassword = ''
    ..photoProfile = ''
    ..firestoreUtilData = FirestoreUtilData();

  UsersStruct._();
  factory UsersStruct([void Function(UsersStructBuilder) updates]) =
      _$UsersStruct;
}

UsersStruct createUsersStruct({
  String? name,
  UsersStruct? uid,
  UsersStruct? email,
  String? password,
  String? confirmPassword,
  DateTime? createdTime,
  String? photoProfile,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      (u) => u
        ..name = name
        ..uid = uid?.toBuilder() ?? UsersStructBuilder()
        ..email = email?.toBuilder() ?? UsersStructBuilder()
        ..password = password
        ..confirmPassword = confirmPassword
        ..createdTime = createdTime
        ..photoProfile = photoProfile
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
}) =>
    users != null
        ? (users.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && users.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = users.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(UsersStruct.serializer, users);

  // Handle nested data for "uid" field.
  addUsersStructData(firestoreData, users.uid, 'uid', forFieldValue);

  // Handle nested data for "email" field.
  addUsersStructData(firestoreData, users.email, 'email', forFieldValue);

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((u) => getUsersFirestoreData(u, true)).toList() ?? [];
