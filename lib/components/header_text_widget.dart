import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_text_model.dart';
export 'header_text_model.dart';

class HeaderTextWidget extends StatefulWidget {
  const HeaderTextWidget({Key? key}) : super(key: key);

  @override
  _HeaderTextWidgetState createState() => _HeaderTextWidgetState();
}

class _HeaderTextWidgetState extends State<HeaderTextWidget> {
  late HeaderTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderTextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AutoSizeText(
                'WingSpan',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 64.0,
                      lineHeight: 0.5,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AutoSizeText(
                'Powered by text-bison',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
