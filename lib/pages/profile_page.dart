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
  bool isSwitched = false;
  Color _labelColor = Colors.black;

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

                                //profie setting page için
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

                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                              backgroundColor:
                                                  Colors.white.withOpacity(0.8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: SingleChildScrollView(
                                                child: Container(
                                                  width: 382,
                                                  height: 724,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 16.0,
                                                                top: 16.0),
                                                        child: Text(
                                                          "Profil Ayarları",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 21),
                                                        ),
                                                      ),
                                                      SizedBox(height: 16.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    16.0),
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                "Kullanıcı Adı",
                                                            labelStyle:
                                                                TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 14,
                                                              color:
                                                                  _labelColor,
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            // TextField'a tıklandığında çalışacak kod bloğu
                                                            setState(() {
                                                              // State değişikliği olduğunu bildirir ve yeniden çizimi sağlar
                                                              _labelColor =
                                                                  Colors.black;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    16.0),
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                "Telefon Numaranız",
                                                            labelStyle: TextStyle(
                                                                fontFamily:
                                                                    'Raleway',
                                                                fontSize: 14,
                                                                color:
                                                                    _labelColor),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            // TextField'a tıklandığında çalışacak kod bloğu
                                                            setState(() {
                                                              _labelColor = Colors
                                                                  .black; // labelColor'ın değerini yeşil olarak güncelle
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    16.0),
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                "E-Posta Adresiniz",
                                                            labelStyle:
                                                                TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 14,
                                                              color:
                                                                  _labelColor,
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            // TextField'a tıklandığında çalışacak kod bloğu
                                                            setState(() {
                                                              _labelColor =
                                                                  Colors.black;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "Şifre",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Raleway',
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                width: 8.0),
                                                            Switch(
                                                              value: false,
                                                              onChanged:
                                                                  (newValue) {},
                                                              activeColor:
                                                                  Colors.white,
                                                              activeTrackColor:
                                                                  Colors.green,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0),
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      "Şifreniz",
                                                                  labelStyle: TextStyle(
                                                                      fontFamily:
                                                                          'Raleway',
                                                                      fontSize:
                                                                          14),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                Colors.black),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                Colors.black),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            IconButton(
                                                              icon: Icon(
                                                                Icons
                                                                    .visibility_outlined,
                                                                color: Colors
                                                                    .black,
                                                                size: 19,
                                                              ),
                                                              onPressed: () {},
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "Koyu Mod",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  fontSize: 20),
                                                            ),
                                                            SizedBox(
                                                                width: 8.0),
                                                            Switch(
                                                              value: false,
                                                              onChanged:
                                                                  (newValue) {},
                                                              activeColor:
                                                                  Colors.white,
                                                              activeTrackColor:
                                                                  Colors.green,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "Kullanıcı Geri Bildirimi",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  fontSize: 20),
                                                            ),
                                                            SizedBox(
                                                                width: 8.0),
                                                            Switch(
                                                              value: isSwitched,
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  isSwitched =
                                                                      value;
                                                                });
                                                              },
                                                              activeColor:
                                                                  Colors.white,
                                                              activeTrackColor:
                                                                  Colors.green,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      if (isSwitched)
                                                        buildSwitchContent(),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            130.0),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                backgroundColor:
                                                                    Colors
                                                                        .lightGreen,
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                              ),
                                                              child: Text(
                                                                "Kaydet",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
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
                                        );
                                      },
                                      child: Icon(
                                        Icons.more_vert,
                                        size: 22.0,
                                        color: Colors.black,
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

Widget buildSwitchContent() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Bize geri dönüş gönderin...",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 270.0,
            top: 130.0,
            child: Icon(
              Icons.send,
              color: Colors.lightGreen,
            ),
          ),
        ],
      ),
    ),
  );
}
