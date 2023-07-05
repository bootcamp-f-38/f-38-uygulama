import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends WidgetModel {
  final unfocusNode = FocusNode();

  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;

  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;

  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;

  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;

  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nameController1?.dispose();
    nameController2?.dispose();
    emailAddressController?.dispose();
    usernameController?.dispose();
    passwordController1?.dispose();
    passwordController2?.dispose();
  }
}
