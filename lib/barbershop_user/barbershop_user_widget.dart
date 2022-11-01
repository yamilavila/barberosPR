import '../barber_home/barber_home_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../haircut_schedule/haircut_schedule_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarbershopUserWidget extends StatefulWidget {
  const BarbershopUserWidget({Key? key}) : super(key: key);

  @override
  _BarbershopUserWidgetState createState() => _BarbershopUserWidgetState();
}

class _BarbershopUserWidgetState extends State<BarbershopUserWidget> {
  String? horasValue10;
  bool? checkboxValue17;
  bool? checkboxValue18;
  String? horasValue11;
  bool? checkboxValue19;
  bool? checkboxValue20;
  String? horasValue1;
  bool? checkboxValue1;
  bool? checkboxValue2;
  String? minutosValue;
  bool? checkboxValue3;
  bool? checkboxValue4;
  bool? checkboxListTileValue1;
  String? horasValue2;
  String? horasValue3;
  bool? checkboxListTileValue2;
  String? horasValue4;
  bool? checkboxValue5;
  bool? checkboxValue6;
  String? horasValue5;
  bool? checkboxValue7;
  bool? checkboxValue8;
  bool? checkboxListTileValue3;
  String? horasValue6;
  bool? checkboxValue10;
  bool? checkboxValue9;
  String? horasValue7;
  bool? checkboxValue11;
  bool? checkboxValue12;
  bool? checkboxListTileValue4;
  String? horasValue8;
  bool? checkboxValue13;
  bool? checkboxValue14;
  String? horasValue9;
  bool? checkboxValue15;
  bool? checkboxValue16;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  String? horasValue12;
  bool? checkboxValue21;
  bool? checkboxValue22;
  String? horasValue13;
  bool? checkboxValue23;
  bool? checkboxValue24;
  bool? checkboxListTileValue7;
  String? horasValue14;
  bool? checkboxValue25;
  bool? checkboxValue26;
  String? horasValue15;
  bool? checkboxValue27;
  bool? checkboxValue28;
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
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
                  color: Color(0xFF01060A),
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BarberHomeWidget(),
                    ),
                  );
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '24p0305y' /* Barbershop Profile */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF00060B),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'uzobrsjr' /* Daily Tool */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SelectionArea(
                  child: Text(
                FFLocalizations.of(context).getText(
                  't1094cn7' /* Operation */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).title1,
              )),
              SelectionArea(
                  child: Text(
                FFLocalizations.of(context).getText(
                  'dn7pl1j8' /* On what time you start and end... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              )),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'w6x536oc' /* Workdays */,
                          ),
                          style: FlutterFlowTheme.of(context).title2,
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                      child: SelectionArea(
                          child: Text(
                        FFLocalizations.of(context).getText(
                          'rz5npuk6' /* Click for 
Open */
                          ,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).black600,
                            ),
                      )),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue1 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue1 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            '4lll7dqy' /* Monday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 20, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowDropDown(
                                                options: List.generate(
                                                    random_data.randomInteger(
                                                        0, 0),
                                                    (index) => random_data
                                                            .randomString(
                                                          1,
                                                          10,
                                                          true,
                                                          false,
                                                          false,
                                                        )).toList(),
                                                onChanged: (val) => setState(
                                                    () => horasValue1 = val),
                                                width: 100,
                                                height: 50,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'd7f6vdnt' /* Close */,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0,
                                                borderRadius: 0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(12, 4, 12, 4),
                                                hidesUnderline: true,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fcv3alcn' /* am */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7ef0ouzi' /* pm */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 10, 0),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0xFFF5F5F5),
                                                      ),
                                                      child: Checkbox(
                                                        value:
                                                            checkboxValue1 ??=
                                                                false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() =>
                                                              checkboxValue1 =
                                                                  newValue!);
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 5, 0),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0xFFF5F5F5),
                                                      ),
                                                      child: Checkbox(
                                                        value:
                                                            checkboxValue2 ??=
                                                                false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() =>
                                                              checkboxValue2 =
                                                                  newValue!);
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'j4mry6ll' /* TO */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                              FlutterFlowDropDown(
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tg707y5l' /* 01 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qfpewcdk' /* 02 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'neh1rd3y' /* 03 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ey1xyxof' /* 04 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gyljq6p2' /* 05 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'eordvb0w' /* 06 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jfv9lodf' /* 07 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'g6bvs91a' /* 08 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5atgrffd' /* 09 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'n5uy8ugv' /* 10 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wgawi3cf' /* 11 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jd5twqi6' /* 12 */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => minutosValue = val),
                                                width: 100,
                                                height: 50,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '2o56cmdk' /* Close */,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0,
                                                borderRadius: 0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(12, 4, 12, 4),
                                                hidesUnderline: true,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rbgxzdm6' /* am */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z189xws0' /* pm */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Theme(
                                                    data: ThemeData(
                                                      checkboxTheme:
                                                          CheckboxThemeData(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0),
                                                        ),
                                                      ),
                                                      unselectedWidgetColor:
                                                          Color(0xFFF5F5F5),
                                                    ),
                                                    child: Checkbox(
                                                      value: checkboxValue3 ??=
                                                          false,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() =>
                                                            checkboxValue3 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      checkboxTheme:
                                                          CheckboxThemeData(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0),
                                                        ),
                                                      ),
                                                      unselectedWidgetColor:
                                                          Color(0xFFF5F5F5),
                                                    ),
                                                    child: Checkbox(
                                                      value: checkboxValue4 ??=
                                                          false,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() =>
                                                            checkboxValue4 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 0),
                                              child: SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  's5cpcvz4' /* Lunch break at */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            ),
                                            FlutterFlowDropDown(
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'z0oih2xi' /* 01 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kx9ns0t5' /* 02 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8gmqasvd' /* 03 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'brvmrm7k' /* 04 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '67h5n858' /* 05 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'm1b5iht7' /* 06 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'pvoubp2j' /* 07 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'gwx32s1t' /* 08 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1sbu7fzk' /* 09 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '56rgfnln' /* 10 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2z4shym2' /* 11 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5jvtxj1y' /* 12 */,
                                                )
                                              ],
                                              onChanged: (val) => setState(
                                                  () => horasValue2 = val),
                                              width: 100,
                                              height: 50,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '5tgatybs' /* Hour */,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2,
                                              borderColor: Colors.transparent,
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
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 0),
                                              child: SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '57cqlmvi' /* Restart at */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                            ),
                                            FlutterFlowDropDown(
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'pefoi01o' /* 01 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6xi1l20q' /* 02 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'sssbr0of' /* 03 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '27waaykq' /* 04 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n1yphlbj' /* 05 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'iw15bht3' /* 06 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n6q1d07q' /* 07 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'v08vby51' /* 08 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '924d9yn6' /* 09 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '34o49n6s' /* 10 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'b5a8x7il' /* 11 */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7wx2l2e7' /* 12 */,
                                                )
                                              ],
                                              onChanged: (val) => setState(
                                                  () => horasValue3 = val),
                                              width: 100,
                                              height: 50,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'yly31svt' /* Hour */,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2,
                                              borderColor: Colors.transparent,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue2 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue2 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'rer8m89m' /* Tuesday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  1, 0, 15, 0),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 20, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FlutterFlowDropDown(
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5m77i1zr' /* 01 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1znkqan8' /* 02 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm8fk3dsx' /* 03 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qqnh3ugc' /* 04 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'el8nw517' /* 05 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '42oc9mc3' /* 06 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7y1wolar' /* 07 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9h2tqxoj' /* 08 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6zwxz5u7' /* 09 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x25bjmj1' /* 10 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u3f23v6c' /* 11 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wes6t6d9' /* 12 */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              horasValue4 =
                                                                  val),
                                                      width: 100,
                                                      height: 50,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '0pgkusbd' /* Close */,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0,
                                                      borderRadius: 0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 4, 12, 4),
                                                      hidesUnderline: true,
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        SelectionArea(
                                                            child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'nfo03fbu' /* am */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        )),
                                                        SelectionArea(
                                                            child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'no53qwb1' /* pm */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        )),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  Color(
                                                                      0xFFF5F5F5),
                                                            ),
                                                            child: Checkbox(
                                                              value:
                                                                  checkboxValue5 ??=
                                                                      false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    checkboxValue5 =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 5, 0),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  Color(
                                                                      0xFFF5F5F5),
                                                            ),
                                                            child: Checkbox(
                                                              value:
                                                                  checkboxValue6 ??=
                                                                      false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    checkboxValue6 =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SelectionArea(
                                                        child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jg0rwvwq' /* TO */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    )),
                                                    FlutterFlowDropDown(
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mma5dg15' /* 01 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3htiklmi' /* 02 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f8t1fg8o' /* 03 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nbmvrsqf' /* 04 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tahai3zj' /* 05 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8q3uoi8f' /* 06 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wmjq8og8' /* 07 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zl5rbhkn' /* 08 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p8noxqsg' /* 09 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6t4yub1y' /* 10 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm5e95txt' /* 11 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f752zvsu' /* 12 */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              horasValue5 =
                                                                  val),
                                                      width: 100,
                                                      height: 50,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'd64tj3t9' /* Close */,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0,
                                                      borderRadius: 0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 4, 12, 4),
                                                      hidesUnderline: true,
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        SelectionArea(
                                                            child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'pczsuziw' /* am */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        )),
                                                        SelectionArea(
                                                            child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'bpesbkeq' /* pm */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        )),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue7 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue7 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                        Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue8 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue8 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue3 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue3 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'ea19wodb' /* Wendsday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4vy3ajtc' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wa1kvkxo' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4qohm164' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '59zxon1j' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nwglotiy' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3w2qutzy' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '049z2cw7' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lqlrm6zc' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'so0ylitz' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3vf2u7dm' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1ueaq8cr' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9vvj1uau' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue6 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '2mvjmbho' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b3za9xho' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i7sxsqr7' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue9 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue9 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue10 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue10 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yxigr68c' /* TO */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lq7e680v' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wtacek23' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9m442hw1' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'z4mkbvkv' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'i8833cji' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wxhasx1o' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '56y7tzey' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'a6xzbmuq' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4uo8pywb' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5r9246se' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ltvfhroy' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9ovhtn5o' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue7 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ewne372k' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wpnbo53v' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vwbeicrt' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue11 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue11 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue12 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue12 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue4 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue4 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            '4m7752tp' /* Thursday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'vi7xsoqo' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kdihyvcn' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9fcb9rn1' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '65lt4mvk' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's2c3ovmb' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9p17aaoe' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'mwzejk3n' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'e9r9ch1f' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '35czrem2' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1w6yzbtv' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tjlntah7' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xt3k51c4' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue8 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ujseowph' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z0xaams1' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0iawizkx' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue13 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue13 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue14 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue14 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'plrmaafn' /* TO */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'iglhsc2v' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uvs5pqti' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'd0yjqr07' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9q1e7egv' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7s5jwxwl' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tlyaam9h' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p3nil92z' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ed3s0b4j' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'dd4ghzkd' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hpeebmkm' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'q6awb0pe' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nttqn3g8' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue9 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'm26jt69s' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zwvqdff5' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w01h3dwb' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue15 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue15 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue16 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue16 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue5 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue5 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'wwqek8h7' /* Friday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'keatdi11' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ig5yjp5f' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sif9e43h' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zzh828i9' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'h4fej4rv' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'l94w3q3h' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm6snmera' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'n6n9teo4' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        't3l4j20f' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'x3iqhdx8' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ebyuhcfs' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'j725rf5n' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue10 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'sbvjey25' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nr31c7ak' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm7m8gd6q' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue17 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue17 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue18 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue18 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yj1p5w4u' /* TO */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7h9bukzl' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wd0le2py' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'iojqvrtt' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5yjwgt3x' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'vc0a7asa' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zsajq9m7' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'mme06r4r' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gqzu2oo2' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hih4zibu' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's8g767yd' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lpkzx5a1' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'i6yza73x' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue11 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'iiqle9e9' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g8x7pp57' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7r9vk8qf' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue19 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue19 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue20 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue20 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue6 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue6 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'u9oecaqb' /* Saturday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xaxgoonx' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ajtvozxh' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'osyq7rvg' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ff1eibj5' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '0byel15h' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wd0m4ayw' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'rd2ft59m' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'exe8wl32' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uhqb2kh3' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yl7x1vj7' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nadyzuhn' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7ppyqdox' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue12 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'x2thqxpy' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iqvxj9vc' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'oy8hde1v' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue21 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue21 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue22 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue22 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3wtmv7dy' /* TO */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kv2we4s1' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hk6vume9' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'q28revg8' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sxe4etsj' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'to8jppl7' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'd6jsx1uf' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'auyc8bef' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'mtlr8vtx' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p2qbacx1' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'x9kyb3az' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'y26jj8ei' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '70pfc027' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue13 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'gshb9dhe' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ae0yfvlb' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '09ap8plf' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue23 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue23 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue24 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue24 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue7 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              checkboxListTileValue7 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'zkoqmanl' /* Sunday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm99n3pld' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'b6hkwdby' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ws1vffaj' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7ng4spvr' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wriivwvf' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p8w4dqlp' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '01ookxry' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7kttkou8' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'mhljm43y' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xzg0yffr' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'x5qsz5ws' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '0aw4czo1' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue14 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'r9irjf61' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pa24vz1d' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k1v3by4s' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue25 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue25 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFFF5F5F5),
                                                          ),
                                                          child: Checkbox(
                                                            value:
                                                                checkboxValue26 ??=
                                                                    false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxValue26 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SelectionArea(
                                                      child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lb5cf6mk' /* TO */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  )),
                                                  FlutterFlowDropDown(
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'rmg3rj3y' /* 01 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xz9e1916' /* 02 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wn8moru6' /* 03 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'o3bi7giw' /* 04 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'an7giblz' /* 05 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6clwc714' /* 06 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8fvg8c85' /* 07 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sqddqato' /* 08 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ixt9j0m7' /* 09 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8g0z6xzl' /* 10 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ezjekwu8' /* 11 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1zjih2oi' /* 12 */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            horasValue15 = val),
                                                    width: 100,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'z9yzmgpg' /* Close */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'higv89hp' /* am */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                      SelectionArea(
                                                          child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1t5427uf' /* pm */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue27 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue27 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              Color(0xFFF5F5F5),
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              checkboxValue28 ??=
                                                                  false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() =>
                                                                checkboxValue28 =
                                                                    newValue!);
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 190,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: SelectionArea(
                                              child: Text(
                                            FFLocalizations.of(context).getText(
                                              'hsnluxh7' /* Specialized In */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .black600,
                                                ),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SwitchListTile(
                                  value: switchListTileValue1 ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => switchListTileValue1 = newValue!);
                                  },
                                  title: Text(
                                    FFLocalizations.of(context).getText(
                                      'g2glxefv' /* Haircut */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    FFLocalizations.of(context).getText(
                                      'podv54do' /*  Style */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                SwitchListTile(
                                  value: switchListTileValue2 ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => switchListTileValue2 = newValue!);
                                  },
                                  title: Text(
                                    FFLocalizations.of(context).getText(
                                      'ytqddiam' /* Beard */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    FFLocalizations.of(context).getText(
                                      'hf9fm2zj' /*   */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                SwitchListTile(
                                  value: switchListTileValue3 ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => switchListTileValue3 = newValue!);
                                  },
                                  title: Text(
                                    FFLocalizations.of(context).getText(
                                      '5zj253ul' /* Eyebrowns */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    FFLocalizations.of(context).getText(
                                      'n0ca57rm' /*   */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 20),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HaircutScheduleWidget(),
                                        ),
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'kl6jr1p3' /* Set Schedule */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Color(0xFF0049AC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
