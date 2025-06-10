import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailID widget.
  FocusNode? emailIDFocusNode;
  TextEditingController? emailIDTextController;
  String? Function(BuildContext, String?)? emailIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailIDFocusNode?.dispose();
    emailIDTextController?.dispose();
  }
}
