// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/event_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:f_38/pages/main_page.dart';


import '../constant/routes.dart';
import '../resources/auth_methods.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  List<MultiplePhotos> users = [
    MultiplePhotos(
        username: 'Kullanıcı 1',
        photos: [
          Photo(
            image: 'assets/images/image4.png',
          ),
          Photo(
            image: 'assets/images/image4.png',
          ),
        ],
        description: "Çok güzel bir gün!"),
    MultiplePhotos(
        username: 'Kullanıcı 2',
        photos: [
          Photo(
            image: 'assets/images/image4.png',
          ),
          Photo(
            image: 'assets/images/image4.png',
          ),
          Photo(
            image: 'assets/images/image4.png',
          ),
        ],
        description: "İnanılmaz bir an!"),
    MultiplePhotos(
        username: 'Kullanıcı 3',
        photos: [
          Photo(
            image: 'assets/images/image1.png',
          ),
        ],
        description: "Güzel bir an!"),
  ];

  List<MultiplePhotos> usersSmallsize = [
    MultiplePhotos(
        username: 'Kullanıcı 1',
        photos: [
          Photo(
            image: 'assets/images/image2.png',
          ),
          Photo(
            image: 'assets/images/image4.png',
          ),
        ],
        description: "Çok güzel bir gün!"),
    MultiplePhotos(
        username: 'Kullanıcı 2',
        photos: [
          Photo(
            image: 'assets/images/image3.png',
          ),
          Photo(
            image: 'assets/images/image4.png',
          ),
          Photo(
            image: 'assets/images/image4.png',
          ),
        ],
        description: "İnanılmaz bir an!"),
  ];
  String _username = "";
  @override
  void initState() {
    getUserName();
    super.initState();
  }

  void getUserName() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      _username = (snap.data() as Map<String, dynamic>)['username'];
    });
  }

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
                color: ColorConstants.AppColor,
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
                color: ColorConstants.AppColor,
              )),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box,
                color: ColorConstants.AppColor,
              )),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_book_outlined,
                color: ColorConstants.AppColor,
              )),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: ColorConstants.AppColor,
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
                    Container(
                        child: Row(
                      children: [
                        Icon(Icons.notifications_none),
                        IconButton(
                            onPressed: () async {
                              await AuthMethods().signOut();
                              if (context.mounted) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              }
                            },
                            icon: Icon(Icons.logout))
                      ],
                    )),
                    Container(
                        child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, profileRoute);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text("B"),
                        radius: 30,
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 23.5),
                constraints: BoxConstraints(
                  maxWidth: 250,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selam,',
                      style: MyTextConstant.myCustomTextStyleCaption,
                    ),
                    Text(
                      '$_username',
                      style: MyTextConstant.myCustomTextStyleCaption,
                    )
                  ],
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
                          color: ColorConstants.secondAppColor,
                          borderRadius: BorderRadius.circular(18.5),
                        ),
                        child: Center(
                          child: Text(
                            'Karbon Ayak İzi',
                            style: MyTextConstant.myCustomTextStyleWhite,
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
                          color: ColorConstants.secondAppColor,
                          borderRadius: BorderRadius.circular(18.5),
                        ),
                        child: Center(
                          child: Text(
                            'Bisiklet Haftası',
                            style: MyTextConstant.myCustomTextStyleWhite,
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
                          color: ColorConstants.secondAppColor,
                          borderRadius: BorderRadius.circular(18.5),
                        ),
                        child: Center(
                          child: Text(
                            'Hafta Konusu',
                            style: MyTextConstant.myCustomTextStyleWhite,
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
                              child: Row(
                                children: [
                                  Text(
                                    usersSmallsize[userIndex].description,
                                    style: MyTextConstant.myCustomTextStyle,
                                  ),
                                  Text(
                                    " /${usersSmallsize[userIndex].username}",
                                    style: MyTextConstant.myCustomTextStyle,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.blueAccent,
                                    child: Text(
                                      "B",
                                      style: GoogleFonts.raleway(
                                          textStyle: TextStyle(fontSize: 10)),
                                    ),
                                    radius: 10,
                                  )
                                ],
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
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => ContentPage()));
          },
          child: CarouselSlider.builder(
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Row(
            children: [
              Text(widget.user.description,
                  style: MyTextConstant.myCustomTextStyle),
              Text(
                " /${widget.user.username}",
                style: MyTextConstant.myCustomTextStyle,
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
