import '../appointment_page/appointment_page_widget.dart';
import '../book_seats/book_seats_widget.dart';
import '../client_home/client_home_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HaircutScheduleWidget extends StatefulWidget {
  const HaircutScheduleWidget({Key? key}) : super(key: key);

  @override
  _HaircutScheduleWidgetState createState() => _HaircutScheduleWidgetState();
}

class _HaircutScheduleWidgetState extends State<HaircutScheduleWidget> {
  String? dropDownValue;
  TextEditingController? clientNameController;
  TextEditingController? shortBioController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    clientNameController = TextEditingController();
    shortBioController = TextEditingController();
  }

  @override
  void dispose() {
    clientNameController?.dispose();
    shortBioController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF038186),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            SliverAppBar(
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: Color(0xFF0049AC),
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.arrow_back_sharp,
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
                            Expanded(
                              child: SelectionArea(
                                  child: Text(
                                FFLocalizations.of(context).getText(
                                  '3gdmd45p' /* Appointment Form */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              elevation: 0,
            )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0x8A03989E),
                                        border: Border.all(
                                          color: Color(0xFF01060A),
                                        ),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                          FFLocalizations.of(context).getText(
                                            'pw8e3yal' /* Choose your style */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                              ),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 190,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          40,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                width: 100,
                                                                height: 100,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/barbero.png',
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '9fliv924' /* Yaruk */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                )),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SelectionArea(
                                                                    child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'x3hevjlg' /* Schedule: */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                )),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'hjmflt73' /* Sunday: */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'hijqbn4c' /* Close */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'fumjs8s9' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'irai9p9e' /* Close */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'iki2775u' /* Monday: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '392t7hg5' /* Close */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '8vzzoh6j' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '7gqbqsfc' /* Close */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'scsx7sj6' /* Tuesday: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'o6hb2ivu' /* 8:00 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'dbi4do62' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'nvug421h' /* 6:00 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'atn46lv3' /* Wendnesday: */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '0v6icxdr' /* 8:00 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'rb784w6l' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'n8zii51h' /* 6:00 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ei72vss4' /* Thursday: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'kke81knp' /* 9:00 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'q7pfdlsj' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'oh0a6cdx' /* 7:00 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'z80u6wr3' /* Friday: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'tueqq5sp' /* Open */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'vzdi97mr' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'ssdfv4fb' /* Close */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'wiavoqwd' /* Saturday: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    )),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '4t8ak9ib' /* Open */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'rt27o25b' /* TO */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'vb7o8xxz' /* Close */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
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
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BookSeatsWidget(),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(
                                      FFLocalizations.of(context).getText(
                                        'spcmoclz' /* Book a Seat */,
                                      ),
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      FFLocalizations.of(context).getText(
                                        'p08rf6y7' /* Wait for confirmation */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF303030),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: TextFormField(
                                  controller: clientNameController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'q7n7iwf6' /* Name */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '2cntztfy' /* Type your name */,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Color(0x63030000),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: TextFormField(
                                  controller: shortBioController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '78qh8xvz' /* Enter description here... */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Color(0x63030000),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AppointmentPageWidget(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.44,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 5, 12, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7gbg97j3' /* Appointment  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2,
                                                ),
                                                Icon(
                                                  Icons.date_range_outlined,
                                                  color: Color(0xFF0049AC),
                                                  size: 24,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.44,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 5, 12, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.monetization_on,
                                              color: Color(0xA9020000),
                                              size: 24,
                                            ),
                                            Expanded(
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue ??=
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                      'smhmu8zo' /* Cash */,
                                                    ),
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'r6cp9cbb' /* Cash */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'b44zkc35' /* ATH Movil */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'iz0fad02' /* Credit Card */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p1k522p2' /* Check */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue =
                                                                val),
                                                    width: 180,
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
                                                      'qgrvq2xs' /* Please select... */,
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
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.44,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 12, 5),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n2rdii0j' /* Time:  */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              ),
                                              SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'i36ucxvn' /* 8 */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                              SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'l123bp42' /* 00 */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                              SelectionArea(
                                                  child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'h812fwet' /* am */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              )),
                                              Icon(
                                                Icons.access_time,
                                                color: Color(0xFF0049AC),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: FFLocalizations.of(context).getText(
                              'a461gp0n' /* Send */,
                            ),
                            icon: Icon(
                              Icons.send_rounded,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: 270,
                              height: 50,
                              color: Color(0xFF0049AC),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).black600,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 20, 90),
                          child: SelectionArea(
                              child: Text(
                            FFLocalizations.of(context).getText(
                              '83bdy5u2' /* By clicking the button it send... */,
                            ),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w200,
                                    ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
