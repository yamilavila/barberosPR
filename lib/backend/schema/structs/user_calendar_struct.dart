import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_calendar_struct.g.dart';

abstract class UserCalendarStruct
    implements Built<UserCalendarStruct, UserCalendarStructBuilder> {
  static Serializer<UserCalendarStruct> get serializer =>
      _$userCalendarStructSerializer;

  BuiltList<DateTime>? get citas;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(UserCalendarStructBuilder builder) => builder
    ..citas = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  UserCalendarStruct._();
  factory UserCalendarStruct(
          [void Function(UserCalendarStructBuilder) updates]) =
      _$UserCalendarStruct;
}

UserCalendarStruct createUserCalendarStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserCalendarStruct(
      (u) => u
        ..citas = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

UserCalendarStruct? updateUserCalendarStruct(
  UserCalendarStruct? userCalendar, {
  bool clearUnsetFields = true,
}) =>
    userCalendar != null
        ? (userCalendar.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addUserCalendarStructData(
  Map<String, dynamic> firestoreData,
  UserCalendarStruct? userCalendar,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userCalendar == null) {
    return;
  }
  if (userCalendar.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && userCalendar.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userCalendarData =
      getUserCalendarFirestoreData(userCalendar, forFieldValue);
  final nestedData =
      userCalendarData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = userCalendar.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getUserCalendarFirestoreData(
  UserCalendarStruct? userCalendar, [
  bool forFieldValue = false,
]) {
  if (userCalendar == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(UserCalendarStruct.serializer, userCalendar);

  // Add any Firestore field values
  userCalendar.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserCalendarListFirestoreData(
  List<UserCalendarStruct>? userCalendars,
) =>
    userCalendars?.map((u) => getUserCalendarFirestoreData(u, true)).toList() ??
    [];
