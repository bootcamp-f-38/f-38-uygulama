import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends WidgetModel {
  final unfocusNode = FocusNode();

  TextEditingController? usernameEmailController;
  String? Function(BuildContext, String?)? usernameEmailControllerValidator;

  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    usernameEmailController?.dispose();
    passwordController?.dispose();
  }
}
