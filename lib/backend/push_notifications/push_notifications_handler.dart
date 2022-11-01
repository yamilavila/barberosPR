import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0xFF03989E),
          child: Image.asset(
            'assets/images/barberosprlogo.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'LoginBarberosPR': (data) async => LoginBarberosPRWidget(),
  'Barbers': (data) async => BarbersWidget(),
  'AppointmentPage': (data) async => AppointmentPageWidget(),
  'barberSettings': (data) async => BarberSettingsWidget(),
  'haircutSchedule': (data) async => HaircutScheduleWidget(),
  'BarbershopUser': (data) async => BarbershopUserWidget(),
  'BarberNotifications': (data) async => BarberNotificationsWidget(),
  'resetPassword': (data) async => ResetPasswordWidget(),
  'checkEmailResetPassword': (data) async => CheckEmailResetPasswordWidget(),
  'clientHome': (data) async => ClientHomeWidget(
        photoProfile: getParameter(data, 'photoProfile'),
        usernameProfile: getParameter(data, 'usernameProfile'),
        userConfirmado: getParameter(data, 'userConfirmado'),
      ),
  'barberOrClient': (data) async => BarberOrClientWidget(),
  'bookSeats': (data) async => BookSeatsWidget(),
  'clientSettings': (data) async => ClientSettingsWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
