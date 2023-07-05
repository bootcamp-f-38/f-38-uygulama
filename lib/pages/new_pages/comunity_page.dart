import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:f_38/models/community_page_model.dart';
export 'package:f_38/models/community_page_model.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  late CommunityPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityPageModel());
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Text(
                    'Topluluklar',
                    style: AppTheme.of(context).displaySmall,
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 64.0,
                                          height: 64.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/770/600',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kategori başlığı',
                                                style: AppTheme.of(context)
                                                    .titleSmall,
                                              ),
                                              Text(
                                                'Kategori başlama tarihi',
                                                style: AppTheme.of(context)
                                                    .labelSmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color:
                                                AppTheme.of(context).secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '+999',
                                            style: AppTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Roboto Slab',
                                                  color:
                                                      AppTheme.of(context).info,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 64.0,
                                          height: 64.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/770/600',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kategori başlığı',
                                                style: AppTheme.of(context)
                                                    .titleSmall,
                                              ),
                                              Text(
                                                'Kategori başlama tarihi',
                                                style: AppTheme.of(context)
                                                    .labelSmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color:
                                                AppTheme.of(context).secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '+999',
                                            style: AppTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Roboto Slab',
                                                  color:
                                                      AppTheme.of(context).info,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 64.0,
                                          height: 64.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/770/600',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kategori başlığı',
                                                style: AppTheme.of(context)
                                                    .titleSmall,
                                              ),
                                              Text(
                                                'Kategori başlama tarihi',
                                                style: AppTheme.of(context)
                                                    .labelSmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color:
                                                AppTheme.of(context).secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '+999',
                                            style: AppTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Roboto Slab',
                                                  color:
                                                      AppTheme.of(context).info,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
