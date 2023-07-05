import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:f_38/constant/icons_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_small_model.dart';
export 'post_small_model.dart';

class PostSmallWidget extends StatefulWidget {
  const PostSmallWidget({Key? key}) : super(key: key);

  @override
  _PostSmallWidgetState createState() => _PostSmallWidgetState();
}

class _PostSmallWidgetState extends State<PostSmallWidget> {
  late PostSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostSmallModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 12.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                color: AppTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/393/600',
                      width: double.infinity,
                      height: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: AppTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 8.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Kullanıcıadı',
                                    style: AppTheme.of(context).labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '10 dakika önce',
                              style: AppTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto Slab',
                                    color: AppTheme.of(context).secondaryText,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 24.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                color: AppTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/393/600',
                      width: double.infinity,
                      height: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: AppTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 8.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Kullanıcıadı',
                                    style: AppTheme.of(context).labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '10 dakika önce',
                              style: AppTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto Slab',
                                    color: AppTheme.of(context).secondaryText,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
