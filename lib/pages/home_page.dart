// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:f_38/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MultiplePhotos> users = [
    MultiplePhotos(
        username: 'Kullanıcı 1',
        photos: [
          Photo(
            image: 'imagesdeneme/4.jpg',
          ),
          Photo(
            image: 'imagesdeneme/7.jpg',
          ),
        ],
        description: "Çok güzel bir gün!"),
    MultiplePhotos(
        username: 'Kullanıcı 2',
        photos: [
          Photo(
            image: 'imagesdeneme/5.jpg',
          ),
          Photo(
            image: 'imagesdeneme/2.jpg',
          ),
          Photo(
            image: 'imagesdeneme/3.jpg',
          ),
        ],
        description: "İnanılmaz bir an!"),
    MultiplePhotos(
        username: 'Kullanıcı 3',
        photos: [
          Photo(
            image: 'imagesdeneme/1.jpg',
          ),
        ],
        description: "Güzel bir an!"),
  ];

  List<MultiplePhotos> usersSmallsize = [
    MultiplePhotos(
        username: 'Kullanıcı 1',
        photos: [
          Photo(
            image: 'imagesdeneme/6.jpg',
          ),
          Photo(
            image: 'imagesdeneme/1.jpg',
          ),
        ],
        description: "Çok güzel bir gün!"),
    MultiplePhotos(
        username: 'Kullanıcı 2',
        photos: [
          Photo(
            image: 'imagesdeneme/7.jpg',
          ),
          Photo(
            image: 'imagesdeneme/2.jpg',
          ),
          Photo(
            image: 'imagesdeneme/6.jpg',
          ),
        ],
        description: "İnanılmaz bir an!"),
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 11.5),
        child: SingleChildScrollView(
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
              Column(
                children: List.generate(users.length, (index) {
                  return Column(
                    children: [
                      UserPhotos(user: users[index]),
                      SizedBox(height: 10),
                    ],
                  );
                }),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      usersSmallsize.length,
                      (userIndex) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 160,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    usersSmallsize[userIndex].photos.length,
                                itemBuilder: (context, photoIndex) {
                                  return Container(
                                    margin: EdgeInsets.only(right: 16),
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            usersSmallsize[userIndex]
                                                .photos[photoIndex]
                                                .image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16),
                              child: Text(
                                usersSmallsize[userIndex].username,
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
                          ],
                        );
                      },
                    ),
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

class MultiplePhotos {
  final String username;
  final List<Photo> photos;
  final String description;

  MultiplePhotos({
    required this.username,
    required this.photos,
    required this.description,
  });
}

class UserPhotos extends StatefulWidget {
  final MultiplePhotos user;

  const UserPhotos({required this.user});

  @override
  _UserPhotosState createState() => _UserPhotosState();
}

class _UserPhotosState extends State<UserPhotos> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 300,
            enableInfiniteScroll: false,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          itemCount: widget.user.photos.length,
          itemBuilder: (context, index, _) {
            return PhotoCard(photo: widget.user.photos[index]);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Row(
            children: [
              Text(
                widget.user.description,
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
                " /${widget.user.username}",
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
                backgroundColor: Colors.blueAccent,
                child: Text(
                  "B",
                  style:
                      GoogleFonts.raleway(textStyle: TextStyle(fontSize: 10)),
                ),
                radius: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Photo {
  final String image;

  Photo({required this.image});
}

class PhotoCard extends StatelessWidget {
  final Photo photo;

  const PhotoCard({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                photo.image,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
