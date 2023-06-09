import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_background_model.dart';
export 'header_background_model.dart';

class HeaderBackgroundWidget extends StatefulWidget {
  const HeaderBackgroundWidget({Key? key}) : super(key: key);

  @override
  _HeaderBackgroundWidgetState createState() => _HeaderBackgroundWidgetState();
}

class _HeaderBackgroundWidgetState extends State<HeaderBackgroundWidget> {
  late HeaderBackgroundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderBackgroundModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: Image.asset(
        'assets/images/birds.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
