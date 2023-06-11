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

class Post {
  final String imageAsset;
  final String caption;
  final String userName;
  final String timeAgo;

  Post(this.imageAsset, this.caption, this.userName, this.timeAgo);
}

class _HomePageState extends State<HomePage> {
  List<String> posts = [
    "imagesdeneme/1.jpg",
    "imagesdeneme/2.jpg",
    "imagesdeneme/3.jpg",
    "imagesdeneme/4.jpg"
  ];
  final List<Post> desc = [
    Post('imagesdeneme/1.jpg', 'Lorem ipsum dolor sit amet', 'berrecelik',
        '5 dakika önce'),
    Post('imagesdeneme/2.jpg', 'Consectetur adipiscing elit', 'cagatayatay',
        '10 dakika önce'),
    Post('imagesdeneme/3.jpg', 'Sed do eiusmod tempor incididunt', 'berrecelik',
        '30 dakika önce'),
    Post('imagesdeneme/7.jpg', 'Sed do eiusmod tempor incididunt',
        'cagatayatay', '50 dakika önce'),
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
                onPressed: () {},
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
                                Container(
                                    child: Icon(Icons.notifications_none)),
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
                          SingleChildScrollView(
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Container(
                                          width: double.infinity,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  desc[index].imageAsset),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              desc[index].caption,
                                              style: GoogleFonts.raleway(
                                                  textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.175,
                                                letterSpacing: 0.0210000008,
                                                color: Color(0xff2e3648),
                                              )),
                                            ),
                                            Text(
                                              " /${desc[index].userName}",
                                              style: GoogleFonts.raleway(
                                                  textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.175,
                                                letterSpacing: 0.0210000008,
                                                color: Color(0xff2e3648),
                                              )),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            CircleAvatar(
                                              backgroundColor:
                                                  Colors.blueAccent,
                                              child: Text(
                                                "B",
                                                style: GoogleFonts.raleway(
                                                    textStyle: TextStyle(
                                                        fontSize: 10)),
                                              ),
                                              radius: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          desc[index].timeAgo,
                                          style: GoogleFonts.robotoSlab(
                                              textStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3175,
                                            letterSpacing: 0.0400000006,
                                            color: Color(0x992e3648),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: desc.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, // İki sütun
                              mainAxisSpacing: 16, // Ana eksen aralığı
                              crossAxisSpacing: 16, // Çapraz eksen aralığı
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: AssetImage(desc[index].imageAsset),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context)
                                .size
                                .width, // Sınırlı bir genişlik belirleyin veya başka bir sınırlı genişliğe sahip bir widget kullanın
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SizedBox(
                                height: 160,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: desc.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 16),
                                      width: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              desc[index].imageAsset),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ]))
              ],
            ),
          ),
        ])));
  }
}
