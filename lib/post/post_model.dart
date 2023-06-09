import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/comment_widget.dart';
import '/components/empty_comments_widget.dart';
import '/components/header_background_widget.dart';
import '/components/header_text_widget.dart';
import '/components/posted_by_widget.dart';
import '/components/responsive_spacer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  Color? color;

  LatLng? location;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for responsiveSpacer component.
  late ResponsiveSpacerModel responsiveSpacerModel1;
  // Model for backButton component.
  late BackButtonModel backButtonModel;
  // Model for postedBy component.
  late PostedByModel postedByModel;
  // Model for emptyComments component.
  late EmptyCommentsModel emptyCommentsModel;
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
    postedByModel = createModel(context, () => PostedByModel());
    emptyCommentsModel = createModel(context, () => EmptyCommentsModel());
    responsiveSpacerModel2 =
        createModel(context, () => ResponsiveSpacerModel());
    headerBackgroundModel = createModel(context, () => HeaderBackgroundModel());
    headerTextModel = createModel(context, () => HeaderTextModel());
  }

  void dispose() {
    unfocusNode.dispose();
    responsiveSpacerModel1.dispose();
    backButtonModel.dispose();
    postedByModel.dispose();
    emptyCommentsModel.dispose();
    responsiveSpacerModel2.dispose();
    headerBackgroundModel.dispose();
    headerTextModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
