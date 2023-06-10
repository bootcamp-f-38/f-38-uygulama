import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.view_timeline,
                color: Colors.green,
              ),
              label: 'Meydan okuma',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                color: Colors.green,
              ),
              label: 'Gönderi',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Ana sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
                color: Colors.green,
              ),
              label: 'Yeşil rehber',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.green,
              ),
              label: 'Ara',
            ),
          ],
        ),
        body: Column(children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupe1fxWtR (NLdQck85U33LMG2Jz3E1FX)
                    padding: EdgeInsets.fromLTRB(24, 24, 0, 11.5),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group21EZX (7:28043)
                          margin: EdgeInsets.fromLTRB(0, 0, 24, 23.5),
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  // notificationsnonexkR (7:28006)
                                  margin: EdgeInsets.fromLTRB(0, 0, 326, 0),
                                  width: 16,
                                  height: 19.5,
                                  child: Icon(Icons.notifications_none)),
                              Container(
                                  // maskgroupsMb (7:28007)
                                  width: 36,
                                  height: 36,
                                  child: Icon(Icons.person_3)),
                            ],
                          ),
                        ),
                        Container(
                          // selamaataycKB (7:28001)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 23.5),
                          constraints: BoxConstraints(
                            maxWidth: 161,
                          ),
                          child: Text(
                            'Selam,\nÇağatay',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w400,
                              height: 1.175,
                              color: Color(0xff2e3648),
                            )),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                          width: 410,
                          height: 32,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame15ouT (14:284)
                                width: 131,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff9844a),
                                  borderRadius: BorderRadius.circular(18.5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Karbon Ayak İzi',
                                    style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175,
                                      letterSpacing: 0.0210000008,
                                      color: Color(0xffffffff),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                // frame16H3w (14:285)
                                width: 127,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff9844a),
                                  borderRadius: BorderRadius.circular(18.5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Bisiklet Haftası',
                                    style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175,
                                      letterSpacing: 0.0210000008,
                                      color: Color(0xffffffff),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                // frame17Zn9 (14:287)
                                width: 120,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff9844a),
                                  borderRadius: BorderRadius.circular(18.5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Hafta Konusu',
                                    style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175,
                                      letterSpacing: 0.0210000008,
                                      color: Color(0xffffffff),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame5GgZ (8:19)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 11.5),
                          width: 382,
                          height: 337.5,
                          child: Stack(
                            children: [
                              Positioned(
                                // maskgroupogV (11:48)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 382,
                                      height: 300,
                                      child: Container(
                                        width: 382,
                                        height: 300,
                                        color: Colors.amber,
                                      )),
                                ),
                              ),
                              Positioned(
                                // loremloremi2m (8:12)
                                left: 16,
                                top: 303.5,
                                child: Align(
                                  child: SizedBox(
                                    width: 89,
                                    height: 17,
                                    child: Text(
                                      'Lorem Lorem',
                                      style: GoogleFonts.raleway(
                                          textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.175,
                                        letterSpacing: 0.0210000008,
                                        color: Color(0xff2e3648),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // dakikancenoK (9:38)
                                left: 16,
                                top: 323.5,
                                child: Align(
                                  child: SizedBox(
                                    width: 71,
                                    height: 14,
                                    child: Text(
                                      '10 dakika önce',
                                      style: GoogleFonts.robotoSlab(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3175,
                                        letterSpacing: 0.0400000006,
                                        color: Color(0x992e3648),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup7tob5nR (NLdQ9bEexSUnvfrx2f7toB)
                          margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                          width: double.infinity,
                          height: 177.5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame4DNq (8:18)
                                margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        // maskgroupZSh (11:50)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 3.5),
                                        width: 179,
                                        height: 140,
                                        child: Container(
                                          width: 179,
                                          height: 140,
                                          color: Colors.indigo,
                                        )),
                                    Container(
                                      // loremloremtE5 (8:15)
                                      margin: EdgeInsets.fromLTRB(16, 0, 0, 3),
                                      child: Text(
                                        'Lorem Lorem',
                                        style: GoogleFonts.raleway(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.175,
                                          letterSpacing: 0.0210000008,
                                          color: Color(0xff2e3648),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // dakikancecA5 (9:39)
                                      margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                      child: Text(
                                        '10 dakika önce',
                                        style: GoogleFonts.robotoSlab(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3175,
                                          letterSpacing: 0.0400000006,
                                          color: Color(0x992e3648),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame3jEh (8:17)
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        // maskgroupsbo (11:52)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 3.5),
                                        width: 179,
                                        height: 140,
                                        child: Container(
                                          width: 179,
                                          height: 140,
                                          color: Colors.purpleAccent,
                                        )),
                                    Container(
                                      // loremloremPq3 (8:16)
                                      margin: EdgeInsets.fromLTRB(16, 0, 0, 3),
                                      child: Text(
                                        'Lorem Lorem',
                                        style: GoogleFonts.raleway(
                                            textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.175,
                                          letterSpacing: 0.0210000008,
                                          color: Color(0xff2e3648),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      // dakikanceicR (9:40)
                                      margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                      child: Text(
                                        '10 dakika önce',
                                        style: GoogleFonts.robotoSlab(
                                            textStyle: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3175,
                                          letterSpacing: 0.0400000006,
                                          color: Color(0x992e3648),
                                        )),
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
                  Container(
                    // autogroupfjyu2t1 (NLdQQaog33Dfiz1gCbfjYu)
                    width: double.infinity,
                    height: 337.5,
                    child: Stack(
                      children: [
                        Positioned(
                          // frame6nsB (8:20)
                          left: 24,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(16, 303.5, 16, 0),
                            width: 382,
                            height: 337.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // loremloremFkm (8:22)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Text(
                                    'Lorem Lorem',
                                    style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175,
                                      letterSpacing: 0.0210000008,
                                      color: Color(0xff2e3648),
                                    )),
                                  ),
                                ),
                                Text(
                                  // dakikanceN4h (9:41)
                                  '10 dakika önce',
                                  style: GoogleFonts.robotoSlab(
                                      textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3175,
                                    letterSpacing: 0.0400000006,
                                    color: Color(0x992e3648),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
