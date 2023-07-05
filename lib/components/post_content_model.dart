import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostContentModel extends WidgetModel {
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }
}
