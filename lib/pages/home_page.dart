import 'package:f_38/pages/event_page.dart';
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
  List<String> posts = [
    "imagesdeneme/1.jpg",
    "imagesdeneme/2.jpg",
    "imagesdeneme/3.jpg",
    "imagesdeneme/4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(children: [
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.green[700],
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EventAnnouncementPage()),
                  );
                },
                icon: Icon(
                  Icons.view_timeline,
                  color: Colors.green[700],
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  
                },
                icon: Icon(
                  Icons.add_box,
                  color: Colors.green[700],
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_book_outlined,
                  color: Colors.green[700],
                )),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.green[700],
              ),
            ),
            Spacer(),
          ]),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupe1fxWtR (NLdQck85U33LMG2Jz3E1FX)
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 11.5),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(child: Icon(Icons.notifications_none)),
                            Container(
                                child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              child: Text("C"),
                              radius: 30,
                            )),
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
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
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 11.5),
                        width: 382,
                        height: 337.5,
                        child: Stack(
                          children: [
                            Positioned(
                              child: SizedBox(
                                  width: 382,
                                  height: 300,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      width: 382,
                                      height: 300,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "imagesdeneme/1.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: 16,
                              top: 305.5,
                              child: Align(
                                child: SizedBox(
                                  width: 200,
                                  height: 17,
                                  child: Text(
                                    'Lorem Lorem / cagatayatay',
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
                              left: 16,
                              top: 325.5,
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Container(
                                        width: 160,
                                        height: 140,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "imagesdeneme/2.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(16, 4, 0, 3),
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
                                      margin: EdgeInsets.fromLTRB(16, 0, 0, 3),
                                      child: Text(
                                        '/ berrecelik',
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
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Container(
                                        width: 160,
                                        height: 140,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "imagesdeneme/3.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Container(
                                      // loremloremPq3 (8:16)
                                      margin: EdgeInsets.fromLTRB(16, 4, 0, 3),
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
                                      margin: EdgeInsets.fromLTRB(16, 0, 0, 3),
                                      child: Text(
                                        '/ berrecelik',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 11.5),
                        width: 382,
                        height: 337.5,
                        child: Stack(
                          children: [
                            Positioned(
                              child: SizedBox(
                                  width: 382,
                                  height: 300,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      width: 382,
                                      height: 300,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "imagesdeneme/4.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: 16,
                              top: 305.5,
                              child: Align(
                                child: SizedBox(
                                  width: 200,
                                  height: 17,
                                  child: Text(
                                    'Lorem Lorem / cagatayatay',
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
                              left: 16,
                              top: 325.5,
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ])));

  }
}
