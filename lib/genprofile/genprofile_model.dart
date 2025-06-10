import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'genprofile_widget.dart' show GenprofileWidget;
import 'package:flutter/material.dart';

class GenprofileModel extends FlutterFlowModel<GenprofileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    navModel.dispose();
  }
}
