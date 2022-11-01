import '../barber_home/barber_home_widget.dart';
import '../client_home/client_home_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_barberos_p_r/login_barberos_p_r_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarberOrClientWidget extends StatefulWidget {
  const BarberOrClientWidget({Key? key}) : super(key: key);

  @override
  _BarberOrClientWidgetState createState() => _BarberOrClientWidgetState();
}

class _BarberOrClientWidgetState extends State<BarberOrClientWidget> {
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
              backgroundColor: Color(0xFF0049AC),
              automaticallyImplyLeading: false,
              title: Text(
                FFLocalizations.of(context).getText(
                  'pt2d5ets' /* Barber or Client? */,
                ),
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF01060A),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2,
            )
          : null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BarberHomeWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            child: Container(
                              width: 170,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xA10049AC),
                                border: Border.all(
                                  color: Color(0xFF01060A),
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'eshij1jm' /* I`m a 
barber */
                                    ,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF01060A),
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ClientHomeWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Container(
                                width: 170,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xA1F40F0F),
                                  border: Border.all(
                                    color: Color(0xFF01060A),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7x7eg0w4' /* I need a 
haircut */
                                      ,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF01060A),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: SelectionArea(
                  child: Text(
                FFLocalizations.of(context).getText(
                  '48d6jt20' /* Select one */,
                ),
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).black600,
                    ),
              )),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(
                            'assets/images/Disenos_e_Imagenes_BarberosPR_App.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginBarberosPRWidget(),
                  ),
                  (r) => false,
                );
              },
              text: FFLocalizations.of(context).getText(
                'ae26p9iq' /* Button */,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xFF0049AC),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).black600,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SelectionArea(
                child: Text(
              FFLocalizations.of(context).getText(
                'to5yrv3f' /* Log Out */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).black600,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                  ),
            )),
          ],
        ),
      ),
    );
  }
}
