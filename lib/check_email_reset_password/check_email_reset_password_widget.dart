import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_barberos_p_r/login_barberos_p_r_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckEmailResetPasswordWidget extends StatefulWidget {
  const CheckEmailResetPasswordWidget({Key? key}) : super(key: key);

  @override
  _CheckEmailResetPasswordWidgetState createState() =>
      _CheckEmailResetPasswordWidgetState();
}

class _CheckEmailResetPasswordWidgetState
    extends State<CheckEmailResetPasswordWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: responsiveVisibility(
        context: context,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Color(0x8A03989E),
              automaticallyImplyLeading: false,
              actions: [],
              centerTitle: false,
              elevation: 2,
            )
          : null,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Image.asset(
                              'assets/images/Disenos_e_Imagenes_BarberosPR_App_copy_2.png',
                              width: 500,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                '8145geg6' /* CHECK YOUR EMAIL */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            )),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'h1ciyp8w' /* Follow the instructions */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(125, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginBarberosPRWidget(),
                              ),
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'vc2cbds4' /* Back to main */,
                          ),
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFF0049AC),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
