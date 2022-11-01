import '../auth/auth_util.dart';
import '../client_home/client_home_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_barberos_p_r/login_barberos_p_r_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientSettingsWidget extends StatefulWidget {
  const ClientSettingsWidget({Key? key}) : super(key: key);

  @override
  _ClientSettingsWidgetState createState() => _ClientSettingsWidgetState();
}

class _ClientSettingsWidgetState extends State<ClientSettingsWidget> {
  bool? switchListEmailNotificationValue;
  bool? switchListNotificationsValue;
  bool? switchListLocationServiceValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Color(0xFF0049AC),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClientHomeWidget(),
                    ),
                  );
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'hiaiye3d' /* Settings */,
                ),
                textAlign: TextAlign.end,
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0,
            )
          : null,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'r6bd2znm' /* Choose what notifcations you w... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: SwitchListTile.adaptive(
              value: switchListNotificationsValue ??= true,
              onChanged: (newValue) async {
                setState(() => switchListNotificationsValue = newValue!);
              },
              title: Text(
                FFLocalizations.of(context).getText(
                  'jr8znu7d' /* Push Notifications */,
                ),
                style: FlutterFlowTheme.of(context).title3,
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'e8fndnds' /* Receive Push notifications fro... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
              activeColor: FlutterFlowTheme.of(context).primaryColor,
              activeTrackColor: Color(0x8A4B39EF),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
            ),
          ),
          SwitchListTile.adaptive(
            value: switchListEmailNotificationValue ??= true,
            onChanged: (newValue) async {
              setState(() => switchListEmailNotificationValue = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                'abaszdse' /* Email Notifications */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                's473iv82' /* Receive email notifications fr... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText2,
            ),
            activeColor: Color(0xFF4B39EF),
            activeTrackColor: Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          SwitchListTile.adaptive(
            value: switchListLocationServiceValue ??= true,
            onChanged: (newValue) async {
              setState(() => switchListLocationServiceValue = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                '3fwkloyl' /* Location Services */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                '9rcychs2' /* Allow us to track your locatio... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText2,
            ),
            activeColor: Color(0xFF4B39EF),
            activeTrackColor: Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 100, 15, 40),
            child: FFButtonWidget(
              onPressed: () async {
                await signOut();
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginBarberosPRWidget(),
                  ),
                  (r) => false,
                );
              },
              text: FFLocalizations.of(context).getText(
                'ugx46blf' /* Log Out */,
              ),
              options: FFButtonOptions(
                width: 90,
                color: Colors.white,
                textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF4B39EF),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
