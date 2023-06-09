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

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for headerBackground component.
  late HeaderBackgroundModel headerBackgroundModel;
  // Model for headerText component.
  late HeaderTextModel headerTextModel;
  // Model for responsiveSpacer component.
  late ResponsiveSpacerModel responsiveSpacerModel1;
  // Model for responsiveSpacer component.
  late ResponsiveSpacerModel responsiveSpacerModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerBackgroundModel = createModel(context, () => HeaderBackgroundModel());
    headerTextModel = createModel(context, () => HeaderTextModel());
    responsiveSpacerModel1 =
        createModel(context, () => ResponsiveSpacerModel());
    responsiveSpacerModel2 =
        createModel(context, () => ResponsiveSpacerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerBackgroundModel.dispose();
    headerTextModel.dispose();
    responsiveSpacerModel1.dispose();
    responsiveSpacerModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
