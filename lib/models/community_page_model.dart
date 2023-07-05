import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommunityPageModel extends WidgetModel {
  final unfocusNode = FocusNode();

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }
}
