import '/components/categories_widget.dart';
import '/components/post_content_widget.dart';
import '/components/post_picture_widget.dart';
import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CratePostPageModel extends WidgetModel {
  final unfocusNode = FocusNode();

  late CategoriesModel categoriesModel;

  TextEditingController? icerikbasigiController;
  String? Function(BuildContext, String?)? icerikbasigiControllerValidator;

  late PostPictureModel postPictureModel;

  late PostContentModel postContentModel;

  void initState(BuildContext context) {
    categoriesModel = createModel(context, () => CategoriesModel());
    postPictureModel = createModel(context, () => PostPictureModel());
    postContentModel = createModel(context, () => PostContentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    categoriesModel.dispose();
    icerikbasigiController?.dispose();
    postPictureModel.dispose();
    postContentModel.dispose();
  }
}
