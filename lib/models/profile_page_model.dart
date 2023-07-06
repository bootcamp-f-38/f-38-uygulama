import '/components/profile_content_widget.dart';
import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends WidgetModel {
  final unfocusNode = FocusNode();

  late ProfileContentModel profileContentModel;

  void initState(BuildContext context) {
    profileContentModel = createModel(context, () => ProfileContentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    profileContentModel.dispose();
  }
}
