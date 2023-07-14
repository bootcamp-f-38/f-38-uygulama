import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/constant/constants.dart';

import 'package:f_38/utils/utils.dart';
import 'package:f_38/widgets/bottomappbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../controller/auth_controller.dart';
import 'package:routemaster/routemaster.dart';
import 'package:f_38/pages/feed_screen.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  TextEditingController _feedbackController = TextEditingController();
  bool isSifre = false;
  bool passwordVisible = false;
  Color _labelColor = Colors.black;

  void addFeedbackToFirebase(String feedbackText) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userId = user.uid;
      final userRef =
          FirebaseFirestore.instance.collection('users').doc(userId);

      try {
        await userRef.update({
          'geriBildirim': FieldValue.arrayUnion([feedbackText])
        });
        print('Geri bildirim başarıyla eklendi!');
      } catch (error) {
        print('Geri bildirim eklenirken bir hata oluştu: $error');
      }
    }
  }

  void changeUserNameInFirebase(String newName) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userId = user.uid;
      final userRef =
          FirebaseFirestore.instance.collection('users').doc(userId);

      try {
        await userRef.update({
          'name': newName,
        });
        print('Kullanıcı adı başarıyla güncellendi!');
      } catch (error) {
        print('Kullanıcı adı güncellenirken bir hata oluştu: $error');
      }
    }
  }

  final newNameController = TextEditingController();

  Widget buildSwitchContent() {
    final feedbackController =
        TextEditingController(); // Text alanını kontrol etmek için bir TextEditingController ekleyin

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0), // Kenar yuvarlatma
                ),
                child: TextField(
                  controller: _feedbackController,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Bize geri dönüş mesajı gönderin...",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 312.0,
              top: 60.0,
              child: IconButton(
                onPressed: () {
                  String feedbackText = _feedbackController.text;
                  addFeedbackToFirebase(feedbackText);
                  _feedbackController.clear();
                },
                icon: Icon(
                  Icons.send,
                  color: ColorConstants.AppColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void navigateToUserP(BuildContext context) {
      final user = FirebaseAuth.instance.currentUser!;
      final uid = user.uid;
      Routemaster.of(context).push('/userp/$uid');
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: [],
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 4.0),
                child: SingleChildScrollView(
                  child: Container(
                    width: 382,
                    height: 704,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            navigateToUserP(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                          child: Text(
                            "Profil Ayarları",
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 21,
                            ),
                          ),
                        ),
                        SizedBox(height: 48.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Profil Adını Değiştir",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Switch(
                                      value: isSifre,
                                      onChanged: (value) {
                                        setState(() {
                                          isSifre = value;
                                        });
                                      },
                                      activeColor: Colors.white,
                                      activeTrackColor: Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                              if (isSifre)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: TextField(
                                        controller: newNameController,
                                        decoration: InputDecoration(
                                          labelText: "Yeni Profil Adınız",
                                          labelStyle: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              SizedBox(height: 8.0),
                              if (isSifre)
                                Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          String newName =
                                              newNameController.text;
                                          changeUserNameInFirebase(newName);
                                          newNameController.clear();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 150.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          backgroundColor: Colors.lightGreen,
                                          foregroundColor: Colors.white,
                                        ),
                                        child: Text(
                                          "Kaydet",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              SizedBox(height: 8.0),
                              SizedBox(height: 50.0),
                              Expanded(
                                child: Consumer(
                                  builder: (context, ref, _) {
                                    //    final isSwitched = ref
                                    //      .watch(isSwitchedProvider.state)
                                    //    .state;
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 14.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Kullanıcı Geri Bildirimi",
                                                style: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(width: 8.0),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5.0),
                                        buildSwitchContent(),
                                        Transform.translate(
                                          offset: Offset(0, -180),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
