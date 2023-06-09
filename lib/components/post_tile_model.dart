import '/backend/backend.dart';
import '/components/posted_by_widget.dart';
import '/components/posted_date_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostTileModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool isHovered = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for postedBy component.
  late PostedByModel postedByModel;
  // Model for postedDate component.
  late PostedDateModel postedDateModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    postedByModel = createModel(context, () => PostedByModel());
    postedDateModel = createModel(context, () => PostedDateModel());
  }

  void dispose() {
    postedByModel.dispose();
    postedDateModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
