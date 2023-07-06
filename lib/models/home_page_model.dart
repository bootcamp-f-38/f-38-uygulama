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

class HomePageModel extends WidgetModel {
  final unfocusNode = FocusNode();

  late CategoriesModel categoriesModel;

  late PostModel postModel1;

  late PostSmallModel postSmallModel;

  late PostModel postModel2;

  void initState(BuildContext context) {
    categoriesModel = createModel(context, () => CategoriesModel());
    postModel1 = createModel(context, () => PostModel());
    postSmallModel = createModel(context, () => PostSmallModel());
    postModel2 = createModel(context, () => PostModel());
  }

  void dispose() {
    unfocusNode.dispose();
    categoriesModel.dispose();
    postModel1.dispose();
    postSmallModel.dispose();
    postModel2.dispose();
  }
}
