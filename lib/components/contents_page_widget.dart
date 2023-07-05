import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/model.dart';
import 'package:f_38/constant/widgets.dart';
import 'package:f_38/constant/icons_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contents_page_model.dart';
export 'contents_page_model.dart';

class ContentsPageWidget extends StatefulWidget {
  const ContentsPageWidget({Key? key}) : super(key: key);

  @override
  _ContentsPageWidgetState createState() => _ContentsPageWidgetState();
}

class _ContentsPageWidgetState extends State<ContentsPageWidget>
    with TickerProviderStateMixin {
  late ContentsPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentsPageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 1270.0,
        ),
        decoration: BoxDecoration(
          color: AppTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x230E151B),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: AppTheme.of(context).primaryBackground,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(64.0),
                    child: Image.network(
                      'https://picsum.photos/seed/737/600',
                      width: 36.0,
                      height: 36.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                        child: Text(
                          'İçerik',
                          style: AppTheme.of(context).titleLarge,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 4.0),
                            child: Text(
                              'Owner',
                              style: AppTheme.of(context).bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Date',
                              style: AppTheme.of(context).bodySmall,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Kategori',
                        style: AppTheme.of(context).bodySmall.override(
                              fontFamily: 'Roboto Slab',
                              color: AppTheme.of(context).secondary,
                            ),
                      ),
                    ],
                  ),
                  IconsButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.more_vert,
                      color: AppTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/seed/81/600',
                  width: double.infinity,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/362/600',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/596/600',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/668/600',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in odio in lacus iaculis luctus. Integer auctor pulvinar facilisis. Morbi maximus nunc sodales dui lacinia consequat. Sed vestibulum rhoncus turpis, at semper eros consectetur eu. Pellentesque velit velit, lacinia a auctor et, maximus ac est.',
                style: AppTheme.of(context).bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.favorite,
                    color: AppTheme.of(context).secondary,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '12',
                      style: AppTheme.of(context).bodyMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      Icons.comment_sharp,
                      color: AppTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '12',
                      style: AppTheme.of(context).bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 1270.0,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Color(0xFFF1F4F8),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 2.0, 2.0, 2.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: Text(
                                              'Kullanıcı Adı',
                                              style: AppTheme.of(context)
                                                  .bodyLarge,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '1 Dakika önce',
                                          style:
                                              AppTheme.of(context).labelSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in odio in lacus iaculis luctus. ',
                                      style: AppTheme.of(context).bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 1270.0,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Color(0xFFF1F4F8),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 2.0, 2.0, 2.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: Text(
                                              'Kullanıcı Adı',
                                              style: AppTheme.of(context)
                                                  .bodyLarge,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '1 Dakika önce',
                                          style:
                                              AppTheme.of(context).labelSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in odio in lacus iaculis luctus. ',
                                      style: AppTheme.of(context).bodySmall,
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
