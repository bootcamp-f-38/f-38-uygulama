import '/components/categories_widget.dart';
import '/components/post_small_widget.dart';
import '/components/post_widget.dart';
import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:f_38/constant/icons_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContentPageModel extends WidgetModel {
  final unfocusNode = FocusNode();

  late ContentPageModel contentsPageModel;

  void initState(BuildContext context) {
    contentsPageModel = createModel(context, () => ContentPageModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contentsPageModel.dispose();
  }
}
