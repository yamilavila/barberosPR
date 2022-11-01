import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../barber_home/barber_home_widget.dart';
import '../barber_or_client/barber_or_client_widget.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../reset_password/reset_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginBarberosPRWidget extends StatefulWidget {
  const LoginBarberosPRWidget({Key? key}) : super(key: key);

  @override
  _LoginBarberosPRWidgetState createState() => _LoginBarberosPRWidgetState();
}

class _LoginBarberosPRWidgetState extends State<LoginBarberosPRWidget> {
  String? radioButtonValue1;
  TextEditingController? confirmPasswordController;
  TextEditingController? emailSingUpController;
  TextEditingController? userNameEmailController;
  TextEditingController? phoneNumberController;
  TextEditingController? passwordController;
  String? radioButtonValue2;
  TextEditingController? loginEmailAddressController;
  TextEditingController? loginPasswordController;

  late bool loginPasswordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    emailSingUpController = TextEditingController();
    userNameEmailController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    loginEmailAddressController = TextEditingController();
    loginPasswordController = TextEditingController();
    loginPasswordVisibility = false;
  }

  @override
  void dispose() {
    confirmPasswordController?.dispose();
    emailSingUpController?.dispose();
    userNameEmailController?.dispose();
    phoneNumberController?.dispose();
    passwordController?.dispose();
    loginEmailAddressController?.dispose();
    loginPasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF03989E),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 52, 16, 4),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'aexmsont' /* Minapp */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Ubuntu',
                            color: Color(0xFF030000),
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/barberosprlogo.png',
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Color(0xFF030000),
                        labelStyle: GoogleFonts.getFont(
                          'Roboto',
                        ),
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'wqj074sl' /* Login */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'wja1bz45' /* Create  Account */,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFF03989E),
                                shape: BoxShape.rectangle,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 16, 20, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller:
                                                  loginEmailAddressController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'v5xkcsv7' /* Enter your email */,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFDBE2E7),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFDBE2E7),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF00060B),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 16, 20, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller:
                                                  loginPasswordController,
                                              obscureText:
                                                  !loginPasswordVisibility,
                                              decoration: InputDecoration(
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '20meo69k' /* Enter your password */,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFDBE2E7),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFDBE2E7),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => loginPasswordVisibility =
                                                        !loginPasswordVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    loginPasswordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: Color(0xFF95A1AC),
                                                    size: 22,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF00060B),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 16, 10, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final user = await signInWithEmail(
                                            context,
                                            loginEmailAddressController!.text,
                                            loginPasswordController!.text,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          await Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BarberHomeWidget(),
                                            ),
                                            (r) => false,
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'a3i82im0' /* Login */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50,
                                          color: Color(0xFF0049AC),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          elevation: 3,
                                          borderSide: BorderSide(
                                            color: Color(0xFF030000),
                                            width: 4,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 60, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ResetPasswordWidget(),
                                            ),
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'j9f84afm' /* Forgot Password? */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 200,
                                          height: 30,
                                          color: Color(0x00FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF030000),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 60, 0, 0),
                                      child: GradientText(
                                        FFLocalizations.of(context).getText(
                                          'a4a0arix' /* Powered by Avilnet, LLC */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF030000),
                                            ),
                                        colors: [
                                          Color(0xFF0C7013),
                                          Color(0xFFF40F0F)
                                        ],
                                        gradientDirection:
                                            GradientDirection.ltr,
                                        gradientType: GradientType.linear,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            't1skacc9' /* New account */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 10, 10),
                                        child: StreamBuilder<List<UsersRecord>>(
                                          stream: queryUsersRecord(
                                            queryBuilder: (usersRecord) =>
                                                usersRecord.orderBy('email'),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<UsersRecord>
                                                userNameEmailUsersRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the document does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final userNameEmailUsersRecord =
                                                userNameEmailUsersRecordList
                                                        .isNotEmpty
                                                    ? userNameEmailUsersRecordList
                                                        .first
                                                    : null;
                                            return TextFormField(
                                              controller:
                                                  userNameEmailController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '7eie303p' /* Email */,
                                                ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                                filled: true,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF00060B),
                                                      ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 10, 0),
                                        child: TextFormField(
                                          controller: emailSingUpController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'grnedyji' /* Confirm Email */,
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                            filled: true,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF00060B),
                                              ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      desktop: false,
                                    ))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 1, 0),
                                          child:
                                              FutureBuilder<List<UsersRecord>>(
                                            future: queryUsersRecordOnce(
                                              queryBuilder: (usersRecord) =>
                                                  usersRecord
                                                      .orderBy('phone_number'),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRecord>
                                                  phoneNumberUsersRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the document does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final phoneNumberUsersRecord =
                                                  phoneNumberUsersRecordList
                                                          .isNotEmpty
                                                      ? phoneNumberUsersRecordList
                                                          .first
                                                      : null;
                                              return TextFormField(
                                                controller:
                                                    phoneNumberController,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'y0x2iagp' /* Phone # */,
                                                  ),
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                      InputBorder.none,
                                                  filled: true,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              10, 0, 0, 0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF00060B),
                                                        ),
                                                keyboardType:
                                                    TextInputType.phone,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'paonuac0' /* Password */,
                                      ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '0yr4wc5a' /* Create a Password */,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      filled: true,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF00060B),
                                        ),
                                    keyboardType: TextInputType.visiblePassword,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: TextFormField(
                                    controller: confirmPasswordController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'mlxe8m20' /* Confirm Password */,
                                      ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'vjulvwdh' /* Confirm Password */,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      filled: true,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF00060B),
                                        ),
                                    keyboardType: TextInputType.visiblePassword,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 30),
                                  child: FlutterFlowRadioButton(
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'zy2ry5kk' /* I Agree Policy & Use */,
                                      )
                                    ].toList(),
                                    onChanged: (val) =>
                                        setState(() => radioButtonValue1 = val),
                                    optionHeight: 25,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xA9020000),
                                            ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor: Color(0xFF0049AC),
                                    inactiveRadioButtonColor: Color(0xFFF6F3F3),
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowRadioButton(
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        '1cuxn2hk' /* I Accept Terms & Conditions */,
                                      )
                                    ].toList(),
                                    onChanged: (val) =>
                                        setState(() => radioButtonValue2 = val),
                                    optionHeight: 25,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xA9020000),
                                            ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor: Color(0xFF0049AC),
                                    inactiveRadioButtonColor: Color(0xFFF6F3F3),
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 11, 20, 50),
                                  child: FutureBuilder<List<UsersRecord>>(
                                    future: queryUsersRecordOnce(
                                      queryBuilder: (usersRecord) => usersRecord
                                          .where('email',
                                              isEqualTo:
                                                  emailSingUpController!.text)
                                          .where('password',
                                              isEqualTo:
                                                  passwordController!.text)
                                          .where('confirm_password',
                                              isEqualTo:
                                                  confirmPasswordController!
                                                      .text)
                                          .orderBy('phone_number')
                                          .orderBy('display_name'),
                                      limit: 20,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<UsersRecord> buttonUsersRecordList =
                                          snapshot.data!;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BarberOrClientWidget(),
                                            ),
                                          );
                                          if (loginPasswordController?.text !=
                                              confirmPasswordController?.text) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Passwords don\'t match!',
                                                ),
                                              ),
                                            );
                                            return;
                                          }

                                          final user =
                                              await createAccountWithEmail(
                                            context,
                                            userNameEmailController!.text,
                                            loginPasswordController!.text,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          final usersCreateData =
                                              createUsersRecordData(
                                            email:
                                                userNameEmailController!.text,
                                            displayName:
                                                userNameEmailController!.text,
                                            createdTime: getCurrentTimestamp,
                                            phoneNumber:
                                                phoneNumberController!.text,
                                            password: passwordController!.text,
                                            confirmPassword:
                                                confirmPasswordController!.text,
                                            photoUrl:
                                                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.pngitem.com%2Fpimgs%2Fm%2F22-224287_computer-icons-user-profile-avatar-caller-id-icon.png&f=1&nofb=1&ipt=01c55719f3b674aca2744648f24116b7202b8119363ef9ecb74c2d37977bbd66&ipo=images',
                                          );
                                          await UsersRecord.collection
                                              .doc(user.uid)
                                              .update(usersCreateData);
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'tdg9cgk4' /* Submit */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50,
                                          color: Color(0xFF0049AC),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Color(0xFF030000),
                                            width: 4,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      );
                                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
