import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        'Yazar - 26.6.2026',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.175,
                          letterSpacing: 0.012,
                          color: Color(0xff2e3648),
                        ),
                      ),
                      Text(
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
              width: 382,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    width: 382,
                    height: 295,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/image1.png',
                        width: 382,
                        height: 295,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    constraints: BoxConstraints(
                      maxWidth: 382,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula ultrices porta. Phasellus cursus porta nulla, eget suscipit felis elementum aliquet.',
                        style: GoogleFonts.robotoSlab(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 1.3175,
                          letterSpacing: 0.04,
                          color: Color(0xff2e3648),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    width: 382,
                    height: 295,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/image1.png',
                        width: 382,
                        height: 295,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xFF2E3648),
                    thickness: 2,
                  ),
                  Container(
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
          ],
        ),
      ),
    );
  }
}
