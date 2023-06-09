import '/backend/backend.dart';
import '/components/header_background_widget.dart';
import '/components/header_text_widget.dart';
import '/components/post_tile_widget.dart';
import '/components/responsive_spacer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'postTileOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'WingSpan',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                background: wrapWithModel(
                  model: _model.headerBackgroundModel,
                  updateCallback: () => setState(() {}),
                  child: HeaderBackgroundWidget(),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(120.0),
                child: wrapWithModel(
                  model: _model.headerTextModel,
                  updateCallback: () => setState(() {}),
                  child: HeaderTextWidget(),
                ),
              ),
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.responsiveSpacerModel1,
                            updateCallback: () => setState(() {}),
                            child: ResponsiveSpacerWidget(),
                          ),
                          Expanded(
                            child: Container(
                              width: 100.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 20.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 0.0, 10.0),
                                          child: Text(
                                            'Posts',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  lineHeight: 1.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      StreamBuilder<List<PostRecord>>(
                                        stream: queryPostRecord(
                                          queryBuilder: (postRecord) =>
                                              postRecord.orderBy('date',
                                                  descending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitChasingDots(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<PostRecord>
                                              columnPostRecordList =
                                              snapshot.data!;
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnPostRecordList.length,
                                                (columnIndex) {
                                              final columnPostRecord =
                                                  columnPostRecordList[
                                                      columnIndex];
                                              return StreamBuilder<UserRecord>(
                                                stream: UserRecord.getDocument(
                                                    columnPostRecord.author!),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            SpinKitChasingDots(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final postTileUserRecord =
                                                      snapshot.data!;
                                                  return PostTileWidget(
                                                    key: Key(
                                                        'Key9u1_${columnIndex}_of_${columnPostRecordList.length}'),
                                                    title:
                                                        columnPostRecord.title,
                                                    postImag:
                                                        columnPostRecord.image,
                                                    author: postTileUserRecord
                                                        .displayName,
                                                    authorImage:
                                                        postTileUserRecord
                                                            .photoUrl,
                                                    commentCount:
                                                        columnPostRecord
                                                            .comments.length,
                                                    date: dateTimeFormat(
                                                        'MMMMEEEEd',
                                                        columnPostRecord.date!),
                                                    userDoc: postTileUserRecord,
                                                    postdoc: columnPostRecord,
                                                  ).animateOnPageLoad(animationsMap[
                                                      'postTileOnPageLoadAnimation']!);
                                                },
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.responsiveSpacerModel2,
                            updateCallback: () => setState(() {}),
                            child: ResponsiveSpacerWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
