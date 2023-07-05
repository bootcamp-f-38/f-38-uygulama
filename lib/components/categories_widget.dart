import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'categories_model.dart';
export 'categories_model.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  late CategoriesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.0,
      decoration: BoxDecoration(),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: CustomButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Kategori',
              options: CustomButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: AppTheme.of(context).secondary,
                textStyle: AppTheme.of(context).labelMedium.override(
                      fontFamily: 'Roboto Slab',
                      color: AppTheme.of(context).info,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: CustomButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Kategori',
              options: CustomButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: AppTheme.of(context).secondary,
                textStyle: AppTheme.of(context).labelMedium.override(
                      fontFamily: 'Roboto Slab',
                      color: AppTheme.of(context).info,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: CustomButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Kategori',
              options: CustomButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: AppTheme.of(context).secondary,
                textStyle: AppTheme.of(context).labelMedium.override(
                      fontFamily: 'Roboto Slab',
                      color: AppTheme.of(context).info,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: CustomButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Kategori',
              options: CustomButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: AppTheme.of(context).secondary,
                textStyle: AppTheme.of(context).labelMedium.override(
                      fontFamily: 'Roboto Slab',
                      color: AppTheme.of(context).info,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: CustomButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Kategori',
              options: CustomButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: AppTheme.of(context).secondary,
                textStyle: AppTheme.of(context).labelMedium.override(
                      fontFamily: 'Roboto Slab',
                      color: AppTheme.of(context).info,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: CustomButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Kategori',
              options: CustomButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: AppTheme.of(context).secondary,
                textStyle: AppTheme.of(context).labelMedium.override(
                      fontFamily: 'Roboto Slab',
                      color: AppTheme.of(context).info,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
