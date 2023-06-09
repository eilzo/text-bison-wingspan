import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'posted_date_model.dart';
export 'posted_date_model.dart';

class PostedDateWidget extends StatefulWidget {
  const PostedDateWidget({
    Key? key,
    required this.parameter1,
  }) : super(key: key);

  final String? parameter1;

  @override
  _PostedDateWidgetState createState() => _PostedDateWidgetState();
}

class _PostedDateWidgetState extends State<PostedDateWidget> {
  late PostedDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostedDateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Date ',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: widget.parameter1!,
                  style: TextStyle(),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
