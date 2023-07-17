import 'package:f_38/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constants.dart';

class Comment {
  String username;
  String comment;
  String userImageURL; // New property for user image URL

  Comment(this.username, this.comment, this.userImageURL);
}

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  String selectedImage = 'assets/images/image1.png';
  String logoImage ='assets/images/logo.png';

  List<String> smallImages = [
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];

  List<Comment> comments = [
    Comment("Kullanıcı", "Yorum",
        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
    Comment("Çağatay", "Çok Güzel",
        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
    Comment("Çağatay", "Deneme Yorumu",
        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
  ];

  void changeImage(int index) {
    setState(() {
      String temp = selectedImage;
      selectedImage = smallImages[index];
      smallImages[index] = temp;
    });
  }

  void addComment(String username, String comment) {
    setState(() {
      comments.add(Comment(username, comment, selectedImage));
    });
  }

  @override
  Widget build(BuildContext context) {
    String username = 'KullanıcıAdı';
    String comment = 'Yorum';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24.0, top: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 8, 24, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(top: 8)),
                      Text(
                        'İçerik Başlığı',
                        style: GoogleFonts.raleway(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 1.175,
                          letterSpacing: 0.0255,
                          color: Color(0xff2e3648),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child: Text(
                          'Yazar - 26.6.2026',
                          style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 1.175,
                            letterSpacing: 0.012,
                            color: Color(0xff2e3648),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                        child: Text(
                          'Metnin Kategorisi',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoSlab(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            height: 1.3175,
                            letterSpacing: 0.04,
                            color: Color(0xfff9844a),
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    iconSize: 24,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: MediaQuery.of(context).size.height * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  selectedImage,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => changeImage(0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        smallImages[0],
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => changeImage(1),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        smallImages[1],
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => changeImage(2),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        smallImages[2],
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet odio cursus, sodales augue quis, semper massa. Duis ut velit finibus, porttitor leo non, pretium tellus. Proin eget pharetra nisi, ac ullamcorper ex. Ut mattis erat ut magna varius, ut auctor felis molestie. Mauris eget sem egestas, accumsan diam a, tincidunt leo. Phasellus suscipit, metus sollicitudin ornare finibus, lectus nibh euismod risus, eu tempus augue turpis ut mauris. Fusce rutrum tempor augue, sed volutpat libero bibendum eu. Cras volutpat ornare vehicula. Quisque ut libero neque. Etiam blandit risus a massa bibendum, at tincidunt lectus lobortis.',
                style: MyTextConstant.captionTextStyle,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  height: 200,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: comments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(comments[index].userImageURL),
                          ),
                          title: Text(
                            comments[index].username,
                            style: MyTextConstant.userNameTextStyle,
                          ),
                          subtitle: Text(
                            comments[index].comment,
                            style: MyTextConstant.myCustomTextStyle,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8),
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Yorum Yaz",
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConstants.AppColor,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            comment = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.recommend),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      addComment(username, comment);
                    },
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
