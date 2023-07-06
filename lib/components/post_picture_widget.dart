import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/icons_button.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_picture_model.dart';
export 'post_picture_model.dart';

class PostPictureWidget extends StatefulWidget {
  const PostPictureWidget({Key? key}) : super(key: key);

  @override
  _PostPictureWidgetState createState() => _PostPictureWidgetState();
}

class _PostPictureWidgetState extends State<PostPictureWidget> {
  late PostPictureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostPictureModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          color: AppTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: AppTheme.of(context).secondary,
                      shape: BoxShape.circle,
                    ),
                    child: IconsButton(
                      buttonSize: 180.0,
                      icon: Icon(
                        Icons.add,
                        color: AppTheme.of(context).info,
                        size: 120.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ),
                Text(
                  'İçerik resmi ekle',
                  style: AppTheme.of(context).titleSmall.override(
                        fontFamily: 'Roboto Slab',
                        color: AppTheme.of(context).secondary,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
