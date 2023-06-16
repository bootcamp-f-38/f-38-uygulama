import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

//commit oldu mu
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isContainerOpen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(
      builder: (BuildContext context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  ///////////////////////////////////if
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 30.0, top: 30, left: 20.0),
                        child: ClipOval(
                          child: Image.asset(
                            "images/kedi.jpg",
                            width: 79,
                            height: 79,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 28.0),
                                  child: Text(
                                    'Kullanıcı Adı',
                                    style: TextStyle(
                                        fontFamily: 'Raleway', fontSize: 21),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 40.0, left: 20.0),
                                  child: Icon(
                                    Icons.info_outline,
                                    size: 22.0,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 40.0, left: 12.0),
                                  child: Icon(
                                    Icons.badge_outlined,
                                    size: 22.0,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 40.0, left: 12.0),
                                  child: Icon(
                                    Icons.verified,
                                    size: 22.0,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 40.0, left: 5.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isContainerOpen = !isContainerOpen;
                                        });
                                      },
                                      child: Icon(
                                        Icons.more_vert,
                                        size: 22.0,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          //if

                          Padding(
                            padding: EdgeInsets.only(bottom: 25.0),
                            child: Text(
                              '@kullanıcıadı',
                              style: TextStyle(
                                  fontFamily: 'Raleway', fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 15, right: 15),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula ultrices porta. '
                      'Phasellus cursus porta nulla, eget suscipit felis elementum aliquet.',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 13),
                    ),
                  ),
                  if (isContainerOpen)
                    Container(
                      width: 370,
                      height: 650,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, top: 16.0),
                            child: Text(
                              "Profil Ayarları",
                              style: TextStyle(
                                  fontFamily: 'Raleway', fontSize: 21),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Kullanıcı Adı",
                                labelStyle: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 14),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Telefon Numaranız",
                                labelStyle: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 14),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "E-Posta Adresiniz",
                                labelStyle: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 14),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              children: [
                                Text(
                                  "Şifre",
                                  style: TextStyle(
                                      fontFamily: 'Raleway', fontSize: 20),
                                ),
                                SizedBox(width: 8.0),
                                Switch(
                                  value:
                                      false, // Seçim durumunu belirtmek için kullanabilirsiniz
                                  onChanged: (newValue) {
                                    // Seçim kontrolüne tıklama işlemleri
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Şifreniz",
                                      labelStyle: TextStyle(
                                          fontFamily: 'Raleway', fontSize: 14),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                  onPressed: () {
                                    // Göz ikonuna tıklama işlemleri
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              children: [
                                Text(
                                  "Koyu Mod",
                                  style: TextStyle(
                                      fontFamily: 'Raleway', fontSize: 20),
                                ),
                                SizedBox(width: 8.0),
                                Switch(
                                  value:
                                      false, // Seçim durumunu belirtmek için kullanabilirsiniz
                                  onChanged: (newValue) {
                                    // Seçim kontrolüne tıklama işlemleri
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextField(
                                  maxLines:
                                      null, // Metin uzadıkça otomatik olarak alt satıra geçer
                                  decoration: InputDecoration(
                                    hintText: "Bize geri dönüş gönderin...",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(16.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 330.0),
                            child: Icon(color: Colors.lightGreen, Icons.send),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // Kaydet butonuna tıklama işlemleri
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 145.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    backgroundColor: Colors
                                        .lightGreen, // Butonun arkaplan rengi yeşil
                                    foregroundColor: Colors
                                        .white, // Butonun metin rengi beyaz
                                  ),
                                  child: Text(
                                    "Kaydet",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  Padding(
                    padding: EdgeInsets.only(top: 18.0, left: 15, right: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('images/kaplan.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: const DecorationImage(
                                  image: AssetImage('images/kaplan.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('images/kaplan2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: const DecorationImage(
                                  image: AssetImage('images/kaplan2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 18.0, left: 15, right: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('images/kaplan.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 19),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('images/kaplan.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 18.0, left: 15, right: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('images/kaplan2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('images/kaplan2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 38),
                              child: Text(
                                'Lorem Lorem',
                                style: TextStyle(
                                    fontFamily: 'Raleway', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 78),
                              child: Text(
                                '10 dakika',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
