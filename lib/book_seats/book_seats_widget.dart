import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../haircut_schedule/haircut_schedule_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookSeatsWidget extends StatefulWidget {
  const BookSeatsWidget({Key? key}) : super(key: key);

  @override
  _BookSeatsWidgetState createState() => _BookSeatsWidgetState();
}

class _BookSeatsWidgetState extends State<BookSeatsWidget> {
  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;
  String? dropDownValue4;
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
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).black600,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HaircutScheduleWidget(),
                    ),
                  );
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'gdy9w9np' /* Booking Seat */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).black600,
                      fontSize: 22,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2,
            )
          : null,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E4D79),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.05, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.15, 0),
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'd7xwi1dd' /* AM */,
                              ),
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xC7038186),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 25, 25, 0),
                                  child: Stack(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 20, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(30, 0, 0, 0),
                                                  child: FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue1 ??=
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                      't2an5dme' /* 08 */,
                                                    ),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm2r2pnv9' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nyh2lzsq' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jy5xg16i' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ymz7f7xb' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kieuhsm5' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2182k5sw' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm6nb7yfu' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ozq7mq7e' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'phli24fz' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'x254nwjs' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'coc0kniy' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5k8b01vb' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue1 =
                                                                val),
                                                    width: 135,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 26,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'uoqdt4qz' /* Select hour... */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black600,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                ),
                                                SelectionArea(
                                                    child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'icohrvgs' /*  :  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1,
                                                )),
                                                FlutterFlowDropDown(
                                                  initialOption:
                                                      dropDownValue2 ??=
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                    '9nf4d5up' /* 00 */,
                                                  ),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wxq8hzns' /* 00 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'na71oywf' /* 30 */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          dropDownValue2 = val),
                                                  width: 135,
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black600,
                                                        fontSize: 26,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ub42qzb8' /* 00 */,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .black600,
                                                  borderWidth: 0,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    '29az44pp' /* Save seat */,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: SelectionArea(
                    child: Text(
                  FFLocalizations.of(context).getText(
                    'owt0ajtu' /* In the morning or afternoon */,
                  ),
                  style: FlutterFlowTheme.of(context).title2,
                )),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E4D79),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.05, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.15, 0),
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'jc2a3t8z' /* PM */,
                              ),
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xC7038186),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 25, 25, 0),
                                  child: Stack(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 20, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(30, 0, 0, 0),
                                                  child: FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue3 ??=
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                      '23efqyun' /* 01 */,
                                                    ),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2xbaffhb' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gd7dxnb3' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1ak1grzz' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p85uf2xw' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's2ug9z3v' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'bky8p7dt' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'i1mqd36e' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tqrztm74' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6xgd2j4r' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '529wfo2p' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qbrcnjju' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'spninmes' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue3 =
                                                                val),
                                                    width: 135,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 26,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'p3c8vxtx' /* Select hour... */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black600,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                ),
                                                SelectionArea(
                                                    child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'srq6lgof' /*  :  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1,
                                                )),
                                                FlutterFlowDropDown(
                                                  initialOption:
                                                      dropDownValue4 ??=
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                    'njm78eb5' /* 00 */,
                                                  ),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '42i4w3fh' /* 00 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ydv5c0ao' /* 30 */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          dropDownValue4 = val),
                                                  width: 135,
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black600,
                                                        fontSize: 26,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'grze89hb' /* 00 */,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .black600,
                                                  borderWidth: 0,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'al4ceu79' /* Save seat */,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
