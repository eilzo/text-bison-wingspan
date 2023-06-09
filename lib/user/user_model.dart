import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/header_background_widget.dart';
import '/components/header_text_widget.dart';
import '/components/responsive_spacer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  Color? color;

  LatLng? location;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for responsiveSpacer component.
  late ResponsiveSpacerModel responsiveSpacerModel1;
  // Model for backButton component.
  late BackButtonModel backButtonModel;
  // Model for responsiveSpacer component.
  late ResponsiveSpacerModel responsiveSpacerModel2;
  // Model for headerBackground component.
  late HeaderBackgroundModel headerBackgroundModel;
  // Model for headerText component.
  late HeaderTextModel headerTextModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    responsiveSpacerModel1 =
        createModel(context, () => ResponsiveSpacerModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    responsiveSpacerModel2 =
        createModel(context, () => ResponsiveSpacerModel());
    headerBackgroundModel = createModel(context, () => HeaderBackgroundModel());
    headerTextModel = createModel(context, () => HeaderTextModel());
  }

  void dispose() {
    unfocusNode.dispose();
    responsiveSpacerModel1.dispose();
    backButtonModel.dispose();
    responsiveSpacerModel2.dispose();
    headerBackgroundModel.dispose();
    headerTextModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
