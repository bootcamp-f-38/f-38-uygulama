import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Content_page extends StatefulWidget {
  const Content_page({super.key});

  @override
  State<Content_page> createState() => _Content_pageState();
}

class _Content_pageState extends State<Content_page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // contentJCH (57:1000)
        padding: EdgeInsets.fromLTRB(24, 32, 23, 11),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // arrowbackiosnewZe1 (57:1075)
              margin: EdgeInsets.fromLTRB(0, 0, 359, 26),
              width: 11.77,
              height: 20,
              child: Image.network(
                'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                width: 11.77,
                height: 20,
              ),
            ),
            Container(
              // frame663p5 (57:1159)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              width: double.infinity,
              height: 42.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // maskgroupNE5 (57:1079)
                    margin: EdgeInsets.fromLTRB(0, 0, 116, 0.5),
                    width: 24,
                    height: 24,
                    child: Image.network(
                      'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Container(
                    // frame655PP (57:1082)
                    margin: EdgeInsets.fromLTRB(0, 0, 126, 0),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // ierikbalRCM (57:1077)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 7.5),
                          child: Text(
                            'İçerik Başlığı',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff2e3648),
                            ),
                          ),
                        ),
                        Text(
                          // yazar26062026JX3 (57:1078)
                          'Yazar - 26.06.2026',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2e3648),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // morevertqG5 (57:1084)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0.5),
                    width: 4,
                    height: 16,
                    child: Image.network(
                      'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                      width: 4,
                      height: 16,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // metninkategorisiYRP (57:1157)
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 23.5),
                child: Text(
                  'Metnin Kategorisi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfff9844a),
                  ),
                ),
              ),
            ),
            Container(
              // frame68F4u (57:1162)
              margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
              width: 382,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // maskgroupvgq (57:1006)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                    width: 382,
                    height: 295,
                    child: Image.network(
                      'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                      width: 382,
                      height: 295,
                    ),
                  ),
                  Container(
                    // loremipsumdolorsitametconsecte (57:1066)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                    constraints: BoxConstraints(
                      maxWidth: 382,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula ultrices porta. Phasellus cursus porta nulla, eget suscipit felis elementum aliquet.',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff2e3648),
                      ),
                    ),
                  ),
                  Container(
                    // maskgroupg3j (86:90)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    width: 382,
                    height: 295,
                    child: Image.network(
                      'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                      width: 382,
                      height: 295,
                    ),
                  ),
                  Container(
                    // frame72nsT (60:99)
                    width: double.infinity,
                    height: 62,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupkgev9CD (P8VREfYptfvGFnT1k2kGEV)
                          padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame70gT3 (60:96)
                                margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                padding: EdgeInsets.fromLTRB(2, 2, 2, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // recommendoXf (57:1165)
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                                      width: 20,
                                      height: 20,
                                      child: Image.network(
                                        'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    Text(
                                      // JjK (60:95)
                                      '123',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2e3648),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame69DbP (57:1169)
                                width: 24,
                                height: 24,
                                child: Image.network(
                                  'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // rectangle32kbK (59:89)
                          margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                          width: 262,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xff2e3648)),
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          // frame71fiH (60:93)
                          margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                          width: 24,
                          height: 24,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Container(
                          // commentHBL (60:91)
                          width: 24,
                          height: 24,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1114291598801502371/1115355605440405564/image.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
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
