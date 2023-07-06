import 'package:f_38/utils/utils.dart';
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
import 'package:f_38/models/home_page_model.dart';
export 'package:f_38/models/home_page_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/pages/add_post_page.dart';
import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/den.dart';
import 'package:f_38/pages/event_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routemaster/routemaster.dart';

import '../../controller/auth_controller.dart';
import '../../resources/auth_methods.dart';
import '../../router.dart';
import '../login_page.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Icon(
                                Icons.notifications,
                                color: AppTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(64.0),
                              child: Image.network(
                                'https://picsum.photos/seed/737/600',
                                width: 44.0,
                                height: 44.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selam,',
                              textAlign: TextAlign.start,
                              style: AppTheme.of(context).displayMedium,
                            ),
                            Text(
                              'Kullanıcı ismi',
                              textAlign: TextAlign.start,
                              style: AppTheme.of(context).displayMedium,
                            ),
                          ],
                        ),
                      ),
                      wrapWithModel(
                        model: _model.categoriesModel,
                        updateCallback: () => setState(() {}),
                        child: CategoriesWidget(),
                      ),
                      wrapWithModel(
                        model: _model.postModel1,
                        updateCallback: () => setState(() {}),
                        child: PostWidget(),
                      ),
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.postSmallModel,
                          updateCallback: () => setState(() {}),
                          child: PostSmallWidget(),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.postModel2,
                        updateCallback: () => setState(() {}),
                        child: PostWidget(),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
