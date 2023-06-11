import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  String selectedImage =
      'assets/images/image1.png'; // Başlangıçta gösterilecek büyük resim

  List<String> smallImages = [
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];

  void changeImage(int index) {
    setState(() {
      String temp = selectedImage;
      selectedImage = smallImages[index];
      smallImages[index] = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // Handle image tap
                    },
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
              height: MediaQuery.of(context).size.height *
                  0.4, // Set the height as a fraction of the screen height
              margin: EdgeInsets.fromLTRB(24, 24, 24, 8),
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
                style: GoogleFonts.robotoSlab(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 1.3175,
                  letterSpacing: 0.04,
                  color: Color(0xff2e3648),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Divider(
                color: Color(0xFF2E3648),
                thickness: 2,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.recommend),
                    onPressed: () {
                      // IconButton 1'e tıklandığında yapılacak işlemler
                    },
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // IconButton 2'ye tıklandığında yapılacak işlemler
                    },
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      // IconButton 3'e tıklandığında yapılacak işlemler
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
