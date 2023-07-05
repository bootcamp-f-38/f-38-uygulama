import '/components/feedback_create_widget.dart';
import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:f_38/constant/icons_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSettingsModel extends WidgetModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for feedback_create component.
  late FeedbackCreateModel feedbackCreateModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    feedbackCreateModel = createModel(context, () => FeedbackCreateModel());
  }

  void dispose() {
    usernameController?.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    feedbackCreateModel.dispose();
  }
}
