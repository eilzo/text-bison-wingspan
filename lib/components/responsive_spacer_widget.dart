import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'responsive_spacer_model.dart';
export 'responsive_spacer_model.dart';

class ResponsiveSpacerWidget extends StatefulWidget {
  const ResponsiveSpacerWidget({Key? key}) : super(key: key);

  @override
  _ResponsiveSpacerWidgetState createState() => _ResponsiveSpacerWidgetState();
}

class _ResponsiveSpacerWidgetState extends State<ResponsiveSpacerWidget> {
  late ResponsiveSpacerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponsiveSpacerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: BoxDecoration(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              desktop: false,
            ))
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: 100.0,
                decoration: BoxDecoration(),
              ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                width: MediaQuery.of(context).size.width * 0.0,
                height: 100.0,
                decoration: BoxDecoration(),
              ),
          ],
        ),
      ],
    );
  }
}
